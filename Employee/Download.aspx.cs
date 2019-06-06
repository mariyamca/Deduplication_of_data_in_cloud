using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patients_Download : System.Web.UI.Page
{
    string fileName;
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
       

      
    }
    private static string GenerateKey(int iKeySize)
    {
        RijndaelManaged aesEncryption = new RijndaelManaged();
        aesEncryption.KeySize = iKeySize;
        aesEncryption.BlockSize = 128;
        aesEncryption.Mode = CipherMode.CBC;
        aesEncryption.Padding = PaddingMode.PKCS7;
        aesEncryption.GenerateIV();
        string ivStr = Convert.ToBase64String(aesEncryption.IV);
        return ivStr;
    }
  
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
       // int id = int.Parse((sender as LinkButton).CommandArgument);
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
       
       
    }
    string DecryptData(string EncryptedText, string Encryptionkey)
    {
        RijndaelManaged objrij = new RijndaelManaged();
        objrij.Mode = CipherMode.CBC;
        objrij.Padding = PaddingMode.PKCS7;

        objrij.KeySize = 0x80;
        objrij.BlockSize = 0x80;
        byte[] encryptedTextByte = Convert.FromBase64String(EncryptedText);
        byte[] passBytes = Encoding.UTF8.GetBytes(Encryptionkey);
        byte[] EncryptionkeyBytes = new byte[0x10];
        int len = passBytes.Length;
        if (len > EncryptionkeyBytes.Length)
        {
            len = EncryptionkeyBytes.Length;
        }
        Array.Copy(passBytes, EncryptionkeyBytes, len);
        objrij.Key = EncryptionkeyBytes;
        objrij.IV = EncryptionkeyBytes;
        byte[] TextByte = objrij.CreateDecryptor().TransformFinalBlock(encryptedTextByte, 0, encryptedTextByte.Length);
        return Encoding.UTF8.GetString(TextByte);  //it will return readable string  
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery("select * from upload where cipher='" + TextBox1.Text + "'");
        if (dt.Rows.Count > 0)
        {
            TextBox2.Visible = true;
            LinkButton1.Visible = true;
            string fnm = dt.Rows[0]["filename"].ToString();
            int keySize = 128;
            string result = GenerateKey(keySize);
            string encryptedpath = Server.MapPath("~/encryptfile/" + fnm);
            System.Collections.Generic.IEnumerable<String> lines = File.ReadLines(encryptedpath);
            string filedata = string.Join(Environment.NewLine, lines);
            string ciphertext = CryptoEngine.Encrypt(filedata, result);
            TextBox2.Text = filedata;
        }
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery("select * from upload where cipher='" + TextBox1.Text + "'");
        fileName = dt.Rows[0]["filename"].ToString();

        Response.Clear();
        Response.ContentType = "application/ms-word";
        Response.AddHeader("Content-disposition", "inline; filename=" + fileName);

        String path = "~\\upload\\" + fileName;
        Response.WriteFile(path);

        Response.End();

    }
}
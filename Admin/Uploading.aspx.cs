using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Service_Provier_Uploading : System.Web.UI.Page
{

    static string ftpServer = "ftp.drivehq.com"; // you can also use proftp.drivehq.com if you have a paid account.
    static string username = "mysoftnet123@gmail.com";    // Your DriveHQ username
    static string password = "mysoft123";    // Your DriveHQ password
    string desti;

    DB db = new DB();
    string id;
    string tp;
    string path;
    string connn;
    string Image;
    public int ownerid;
    string value;
    int iStringLength;
    string ciphertext;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_alrdy.Text = "";
        //id = Session["eid"].ToString();
        if (!IsPostBack)
        {
            FileUpload1.Attributes["onchange"] = "UploadFile(this)";

            DataTable dt = db.selectquery("select * from work");
            ddl_project.DataSource = dt;
            ddl_project.DataTextField = "projectname";
            ddl_project.DataValueField = "wid";
            ddl_project.DataBind();
            ddl_project.Items.Insert(0, "Select");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }

    public void keystr()
    { 
}
   
    protected void Upload(object sender, EventArgs e)
    {
        string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);

        //if (extension.ToLower() == ".txt")
        //{


        string param = "admin@gmai.com";
        txt_publicparam.Text = EnryptString(param);
        txt_filename.Text = FileUpload1.FileName;
       
        /// LABEL And TAG
            string filenm = EnryptString(FileUpload1.FileName);
            string subject = EnryptString(filenm);

            string path = Server.MapPath("~/upload/" + FileUpload1.FileName);
            FileUpload1.SaveAs(path);
           System.Collections.Generic.IEnumerable<String> lines = File.ReadLines(path);
            string plaintext = System.IO.File.ReadAllText(path);
            string lbl = subject.ToString();
             txt_label.Text = lbl;
            string tg = lbl + subject;
             int keySize = 128;
            string result = GenerateKey(keySize);

        txt_tag.Text = CryptoEngine.Encrypt(filenm, result);
    
    /// PROOF 

    Random r = new Random();
        double d = r.Next(-4, 4) + (r.Next(0, 9) / (double)10); 

        txt_proof.Text = d.ToString();
    
        //FILE CONTENT

        string encryptedpath = Server.MapPath("~/upload/" + FileUpload1.FileName);
        string filedata = string.Join(Environment.NewLine, lines);
         ciphertext = CryptoEngine.Encrypt(filedata, result);
        txt_content.Text = filedata;

        connn = ciphertext.ToString();

        Session["connn"] = connn;
        ///TRAPDOOR KEY

        string a1 = EnryptString(ddl_project.SelectedItem.Text);
        string a2 = EnryptString(ddl_language.SelectedItem.Text);

        string acs = EnryptString(a1 + a2);

        string ffnm = EnryptString(FileUpload1.FileName);

        string chr = txt_ciphertext.Text;
         tp = EnryptString(acs + ffnm + chr);


        byte[] byteArray = null;
        System.Text.StringBuilder hexNumbers = new System.Text.StringBuilder();
        byteArray = System.Text.ASCIIEncoding.ASCII.GetBytes(tp);
        for (int i = 0; i <= byteArray.Length - 1; i++)
        {
            hexNumbers.Append(byteArray[i].ToString("x"));
        }
        // Interaction.MsgBox(hexNumbers.ToString());
        string numberOnly = Regex.Replace(hexNumbers.ToString(), "[^0-9.]", "");
        txt_trapdoor.Text = numberOnly.ToString();


       



        ////Displaying alphabets

        //Response.Write(tpp);

        //   string allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789!@$?_-";



        //   document.insertEncryptedData(Convert.ToInt32(Tb_FileId.Text), result, ciphertext,encryptedpath);
        // Session["encrypteddata"] = ciphertext;

        // Response.Redirect("~/DataOwner/EncryptData.aspx?DocId=" + Tb_FileId.Text + "&OwnerId=" + ownerid);
        //}

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
//    AES Advanced Encryption Standard:
//The Advanced Encryption Standard or AES also called Rijndael cipher
public string EnryptString(string strEncrypted)
{
    byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
    string encrypted = Convert.ToBase64String(b);
        
        return encrypted;
}
    public string DeryptStrg(string encrString)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(encrString);
        string decrypted = Convert.ToBase64String(b);
        return decrypted;
    }
    public string DecryptString(string encrString)
{
    byte[] b;
    string decrypted;
    try
    {
        b = Convert.FromBase64String(encrString);
        decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
    }
    catch (FormatException fe)
    {
        decrypted = "";
    }
    return decrypted;
}
    public string Enryptint(string intgrEncrypted)
    {
        byte[] cc = System.Text.ASCIIEncoding.ASCII.GetBytes(intgrEncrypted);
        int mm = Convert.ToInt32(cc);
        return intgrEncrypted;
    }
    //public string getspan(DateTime value)
    //{
    //    return value.ToString("yyyyMMddHHmmssffff"); //for making unique name of image
    //}

    
    protected void ddl_language_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbl_alrdy.Text = "";
          DataTable dt = db.selectquery("select * from upload where projectname='" + ddl_project.SelectedItem.Text + "' and language='" + ddl_language.SelectedItem.Text + "' and filename='"+txt_filename.Text+ "' and version='"+txt_verion.Text+"'");
        if (dt.Rows.Count > 0)
        {
            lbl_alrdy.Text = "Duplicated File Uploaded !!!! Removing file";

        }
        else
        {
            /// CIPHERTEXT
            lbl_alrdy.Text = "";
            string fstatr = ddl_project.SelectedItem.Text;
            string scnd = ddl_language.SelectedItem.Text;

            string ct = fstatr + scnd;
            txt_ciphertext.Text = EnryptString(ct);
        }

    }



    protected void Button1_Click1(object sender, EventArgs e)
    {


        string paths = Server.MapPath("~/encryptfile/" + txt_filename.Text);
        FileUpload1.SaveAs(paths);
        System.Collections.Generic.IEnumerable<String> lines = File.ReadLines(paths);
        string plaintext = System.IO.File.ReadAllText(paths);


        int keySize = 128;
        string result = GenerateKey(keySize);

        string filedata = string.Join(Environment.NewLine, lines);
        string ciphertexts = Session["connn"].ToString();


        File.WriteAllText(paths, ciphertexts.ToString());
        desti = "/DEDUPLICATION/" + txt_filename.Text;

        //UploadFile(@"D:\IEEE-PROJECTS\8-Privacy-Top-k\June-05-2018\Privacy-Preserving Multi-keyword Top-k\OwnerEncryptedDocuments\Data-encryption-decryption.txt", "/My Documents/Data-encryption-decryption.txt");
        UploadFile(paths, desti);
        int a = db.exequery("insert into upload(filename,publicparmeter,projectname,language,cipher,tag,label,trapoor,encryptfilename,date,status,eid,version) values ('" + txt_filename.Text + "','" + txt_publicparam.Text + "','" + ddl_project.SelectedItem.Text + "','" + ddl_language.SelectedItem.Text + "','" + txt_ciphertext.Text + "','" + txt_tag.Text + "','" + txt_label.Text + "','" + txt_trapdoor.Text + "','" + txt_filename.Text + "','"+DateTime.Now+"','waiting','0','"+txt_verion.Text+"')");
       

    }

    /// <summary>
    /// Upload a file to the FTP server.
    /// </summary>
    /// <param name="srcFilePath">a local file path</param>
    /// <param name="destFilePath">the path on the FTP server, such as /temp/filename</param>
    /// <returns></returns>
    public static bool UploadFile(string srcFilePath, string destFilePath = null)
    {
        


        if (String.IsNullOrWhiteSpace(srcFilePath))
            throw new ArgumentNullException("Source FilePath.");

        if (String.IsNullOrWhiteSpace(destFilePath))
            destFilePath = Path.GetFileName(srcFilePath);

        Uri serverUri = GetUri(destFilePath);

        // the serverUri should start with the ftp:// scheme.
        if (serverUri.Scheme != Uri.UriSchemeFtp)
            return false;

        FtpWebRequest request = CreateFtpRequest(serverUri, WebRequestMethods.Ftp.UploadFile);

        // read file content into byte array
        FileStream sourceStream = new FileStream(srcFilePath, FileMode.Open, FileAccess.Read);
        byte[] fileContent = new byte[sourceStream.Length];
        sourceStream.Read(fileContent, 0, fileContent.Length);
        sourceStream.Close();

        // send the file content to the FTP server
        request.ContentLength = fileContent.Length;
        Stream requestStream = request.GetRequestStream();
        requestStream.Write(fileContent, 0, fileContent.Length);
        requestStream.Close();

        FtpWebResponse response = (FtpWebResponse)request.GetResponse();
        Console.WriteLine("Response status: {0} - {1}", response.StatusCode, response.StatusDescription);

        return true;
    }

    /// <summary>
    /// Download srcFilePath on the FTP server to the destFilePath. If null, save to the current folder)
    /// </summary>
    /// <param name="srcFilePath"></param>
    /// <param name="destFilePath"></param>
    /// <returns></returns>
    public static bool DownloadFile(string srcFilePath, string destFilePath = null)
    {
        if (String.IsNullOrWhiteSpace(srcFilePath))
            throw new ArgumentNullException("Source FilePath.");

        if (String.IsNullOrWhiteSpace(destFilePath))
            destFilePath = Path.GetFileName(srcFilePath);

        Uri serverUri = GetUri(srcFilePath);

        //// the serverUri should start with the ftp:// scheme.
        if (serverUri.Scheme != Uri.UriSchemeFtp)
            return false;

        FtpWebRequest request = CreateFtpRequest(serverUri, WebRequestMethods.Ftp.DownloadFile);

        FtpWebResponse response = (FtpWebResponse)request.GetResponse();
        Stream responseStream = response.GetResponseStream();

        FileStream fileStream = new FileStream(destFilePath, FileMode.OpenOrCreate, FileAccess.Write);

        byte[] buffer = new byte[32 * 1024];

        while (true)
        {
            int bytesRead = responseStream.Read(buffer, 0, buffer.Length);
            if (bytesRead == 0)
                break;

            fileStream.Write(buffer, 0, bytesRead);
        }
        fileStream.Close();

        Console.WriteLine("Response status: {0} - {1}", response.StatusCode, response.StatusDescription);

        return true;
    }

    /// <summary>
    /// List an FTP folder's content
    /// </summary>
    /// <param name="path"></param>
    /// <returns></returns>
    public static string List(string path)
    {

        Uri serverUri = GetUri(path);

        //// the serverUri should start with the ftp:// scheme.
        if (serverUri.Scheme != Uri.UriSchemeFtp)
            return "";

        FtpWebRequest request = CreateFtpRequest(serverUri, WebRequestMethods.Ftp.ListDirectory);

        FtpWebResponse response = (FtpWebResponse)request.GetResponse();
        StreamReader sr = new StreamReader(response.GetResponseStream());
        string result = sr.ReadToEnd();
        Console.WriteLine("Response status: {0} - {1}", response.StatusCode, response.StatusDescription + "\r\n" + result);

        return result;
    }

    private static FtpWebRequest CreateFtpRequest(Uri serverUri, string method)
    {
        FtpWebRequest request = (FtpWebRequest)WebRequest.Create(serverUri);
        request.EnableSsl = true;
        request.UsePassive = true;
        request.UseBinary = true;
        request.KeepAlive = true;
        request.Credentials = new NetworkCredential(username, password);
        request.Method = method;

        return request;
    }

    private static Uri GetUri(string remoteFilePath)
    {
        Uri ftpServerUri = new Uri("ftp://" + ftpServer);
        return new Uri(ftpServerUri, remoteFilePath);
    }



}
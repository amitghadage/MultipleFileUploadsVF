public class AttachmentActionFunction {
    public transient String base64;
    public Case c;
    public String getBase64()
    {
        return base64;
    }
    public void setbase64(String base64)
    {
        this.base64 = base64;
    }
    public String fileName {get; set;}
    public AttachmentActionFunction(ApexPages.StandardController std)
    {
        c = (Case)std.getRecord();
    }
    public void saveFile()
    {
        Attachment a = new Attachment(parentId = c.Id, Body =  EncodingUtil.base64Decode(base64), name = fileName);
        insert a;
    }
}
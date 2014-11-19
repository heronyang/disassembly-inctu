.class public Ledu/nctu/e3/helpers/HttpHelper;
.super Ljava/lang/Object;
.source "HttpHelper.java"


# static fields
.field public static final serverHost:Ljava/lang/String; = "http://140.113.8.80/mService/service.asmx/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertRoleFromChinese(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "role"

    .prologue
    .line 157
    const-string v0, ""

    .line 158
    .local v0, result:Ljava/lang/String;
    const-string v1, "\u5b78\u751f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    const-string v0, "stu"

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 160
    :cond_1
    const-string v1, "\u6559\u5e2b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    const-string v0, "tea"

    .line 162
    goto :goto_0

    :cond_2
    const-string v1, "\u52a9\u6559"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v0, "ta"

    goto :goto_0
.end method

.method public static convertRoleFromServer(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "role"

    .prologue
    .line 168
    const-string v0, ""

    .line 169
    .local v0, result:Ljava/lang/String;
    const-string v1, "stu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    const v1, 0x7f050011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 171
    :cond_1
    const-string v1, "mtea"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    const v1, 0x7f050012

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    goto :goto_0

    :cond_2
    const-string v1, "ta"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const v1, 0x7f050013

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "urlStr"
    .parameter "path"
    .parameter "filename"

    .prologue
    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, result:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 182
    .local v8, url:Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 183
    .local v1, connection:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 184
    .local v5, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .local v3, file:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 186
    .local v4, fos:Ljava/io/FileOutputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 187
    .local v0, buffer:[B
    const/4 v6, -0x1

    .line 188
    .local v6, read:I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_0

    .line 191
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 192
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 193
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 201
    .end local v0           #buffer:[B
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #read:I
    .end local v8           #url:Ljava/net/URL;
    :goto_1
    return-object v7

    .line 189
    .restart local v0       #buffer:[B
    .restart local v1       #connection:Ljava/net/HttpURLConnection;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #read:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 194
    .end local v0           #buffer:[B
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #read:I
    .end local v8           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 196
    .local v2, e:Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v2           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v2

    .line 199
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getE3News(Landroid/content/Context;Landroid/os/Handler;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 204
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v9, news:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Ledu/nctu/e3/helpers/HttpHelper;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v10, Lorg/ksoap2/serialization/SoapObject;

    const-string v1, "http://tempuri.org/"

    const-string v2, "getDCPC_E3News"

    invoke-direct {v10, v1, v2}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v10, request:Lorg/ksoap2/serialization/SoapObject;
    new-instance v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v1, 0x78

    invoke-direct {v7, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    .line 208
    .local v7, envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    iput-object v10, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    .line 209
    iput-boolean v4, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 210
    new-instance v1, Lorg/ksoap2/serialization/MarshalBase64;

    invoke-direct {v1}, Lorg/ksoap2/serialization/MarshalBase64;-><init>()V

    invoke-virtual {v1, v7}, Lorg/ksoap2/serialization/MarshalBase64;->register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V

    .line 211
    new-instance v8, Lorg/ksoap2/transport/HttpTransportSE;

    const-string v1, "http://dcpc.nctu.edu.tw/wservices/dcpcwebservices.asmx"

    invoke-direct {v8, v1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 212
    .local v8, ht:Lorg/ksoap2/transport/HttpTransportSE;
    iput-boolean v4, v8, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    .line 214
    :try_start_0
    const-string v1, "http://tempuri.org/getDCPC_E3News"

    invoke-virtual {v8, v1, v7}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 215
    iget-object v3, v8, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 216
    .local v3, result:Ljava/lang/String;
    const-string v1, "soap"

    iget-object v2, v8, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "soap"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v0, Ledu/nctu/e3/helpers/XmlParser;

    const/4 v4, 0x1

    const-string v5, "E3NewsList"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ledu/nctu/e3/helpers/XmlParser;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V

    .line 219
    .local v0, parser:Ledu/nctu/e3/helpers/XmlParser;
    invoke-virtual {v0}, Ledu/nctu/e3/helpers/XmlParser;->getList()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 237
    .end local v0           #parser:Ledu/nctu/e3/helpers/XmlParser;
    .end local v3           #result:Ljava/lang/String;
    .end local v7           #envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v8           #ht:Lorg/ksoap2/transport/HttpTransportSE;
    .end local v10           #request:Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v9

    .line 220
    .restart local v7       #envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .restart local v8       #ht:Lorg/ksoap2/transport/HttpTransportSE;
    .restart local v10       #request:Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v6

    .line 222
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 223
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 225
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v8           #ht:Lorg/ksoap2/transport/HttpTransportSE;
    .end local v10           #request:Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    new-instance v1, Ledu/nctu/e3/helpers/HttpHelper$3;

    invoke-direct {v1, p0}, Ledu/nctu/e3/helpers/HttpHelper$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static getE3NewsFileList(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .parameter "handler"
    .parameter "newsId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v8, files:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Ledu/nctu/e3/helpers/HttpHelper;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    new-instance v10, Lorg/ksoap2/serialization/SoapObject;

    const-string v1, "http://tempuri.org/"

    const-string v2, "getDCPC_E3NewsAttachFileList"

    invoke-direct {v10, v1, v2}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v10, request:Lorg/ksoap2/serialization/SoapObject;
    const-string v1, "_szResId"

    invoke-virtual {v10, v1, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 244
    new-instance v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v1, 0x6e

    invoke-direct {v7, v1}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    .line 245
    .local v7, envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    invoke-virtual {v7, v10}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 246
    iput-boolean v4, v7, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 247
    new-instance v1, Lorg/ksoap2/serialization/MarshalBase64;

    invoke-direct {v1}, Lorg/ksoap2/serialization/MarshalBase64;-><init>()V

    invoke-virtual {v1, v7}, Lorg/ksoap2/serialization/MarshalBase64;->register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V

    .line 248
    new-instance v9, Lorg/ksoap2/transport/HttpTransportSE;

    const-string v1, "http://dcpc.nctu.edu.tw/wservices/dcpcwebservices.asmx"

    invoke-direct {v9, v1}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 249
    .local v9, ht:Lorg/ksoap2/transport/HttpTransportSE;
    iput-boolean v4, v9, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    .line 251
    :try_start_0
    const-string v1, "http://tempuri.org/getDCPC_E3NewsAttachFileList"

    invoke-virtual {v9, v1, v7}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 252
    iget-object v3, v9, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 253
    .local v3, result:Ljava/lang/String;
    const-string v1, "soap"

    iget-object v2, v9, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, "soap"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Ledu/nctu/e3/helpers/XmlParser;

    const/4 v4, 0x1

    const-string v5, "esNewsAttachFileList"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Ledu/nctu/e3/helpers/XmlParser;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    .local v0, parser:Ledu/nctu/e3/helpers/XmlParser;
    invoke-virtual {v0}, Ledu/nctu/e3/helpers/XmlParser;->getList()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 274
    .end local v0           #parser:Ledu/nctu/e3/helpers/XmlParser;
    .end local v3           #result:Ljava/lang/String;
    .end local v7           #envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v9           #ht:Lorg/ksoap2/transport/HttpTransportSE;
    .end local v10           #request:Lorg/ksoap2/serialization/SoapObject;
    :goto_0
    return-object v8

    .line 257
    .restart local v7       #envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .restart local v9       #ht:Lorg/ksoap2/transport/HttpTransportSE;
    .restart local v10       #request:Lorg/ksoap2/serialization/SoapObject;
    :catch_0
    move-exception v6

    .line 259
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 260
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 262
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    .end local v9           #ht:Lorg/ksoap2/transport/HttpTransportSE;
    .end local v10           #request:Lorg/ksoap2/serialization/SoapObject;
    :cond_0
    new-instance v1, Ledu/nctu/e3/helpers/HttpHelper$4;

    invoke-direct {v1, p0}, Ledu/nctu/e3/helpers/HttpHelper$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static varargs getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .parameter "context"
    .parameter "handler"
    .parameter "type"
    .parameter "dataType"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Ledu/nctu/e3/helpers/HttpHelper;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 95
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 96
    .local v7, client:Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://140.113.8.80/mService/service.asmx/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 97
    .local v13, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v13, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v12, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p4

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    move-object v11, v10

    .line 131
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v12           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v11, list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    return-object v11

    .line 100
    .end local v11           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7       #client:Lorg/apache/http/client/HttpClient;
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v12       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p4

    array-length v2, v0

    if-lt v9, v2, :cond_1

    .line 104
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v12, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 105
    const-string v2, "post"

    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Ledu/nctu/e3/helpers/HttpHelper;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-interface {v7, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 107
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ledu/nctu/e3/helpers/HttpHelper;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, result:Ljava/lang/String;
    const-string v2, "post"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v1, Ledu/nctu/e3/helpers/XmlParser;

    const/4 v5, 0x1

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Ledu/nctu/e3/helpers/XmlParser;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .local v1, parser:Ledu/nctu/e3/helpers/XmlParser;
    invoke-virtual {v1}, Ledu/nctu/e3/helpers/XmlParser;->getList()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .end local v1           #parser:Ledu/nctu/e3/helpers/XmlParser;
    .end local v4           #result:Ljava/lang/String;
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #i:I
    .end local v12           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    move-object v11, v10

    .line 131
    .restart local v11       #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_0

    .line 101
    .end local v11           #list:Ljava/lang/Object;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v7       #client:Lorg/apache/http/client/HttpClient;
    .restart local v9       #i:I
    .restart local v12       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v3, p4, v9

    add-int/lit8 v9, v9, 0x1

    aget-object v5, p4, v9

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 111
    :catch_0
    move-exception v8

    .line 113
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 114
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    .line 116
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 117
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v8

    .line 119
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 122
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #i:I
    .end local v12           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    new-instance v2, Ledu/nctu/e3/helpers/HttpHelper$2;

    invoke-direct {v2, p0}, Ledu/nctu/e3/helpers/HttpHelper$2;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public static varargs getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15
    .parameter "context"
    .parameter "handler"
    .parameter "type"
    .parameter "values"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Ledu/nctu/e3/helpers/HttpHelper;->isMobileNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 54
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 55
    .local v7, client:Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://140.113.8.80/mService/service.asmx/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 56
    .local v13, post:Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v13, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v12, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object/from16 v0, p3

    array-length v2, v0

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    move-object v11, v10

    .line 90
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v10           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    .local v11, map:Ljava/lang/Object;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v11

    .line 59
    .end local v11           #map:Ljava/lang/Object;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #client:Lorg/apache/http/client/HttpClient;
    .restart local v10       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move-object/from16 v0, p3

    array-length v2, v0

    if-lt v9, v2, :cond_1

    .line 63
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v12, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v13, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 64
    const-string v2, "post"

    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Ledu/nctu/e3/helpers/HttpHelper;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-interface {v7, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 66
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Ledu/nctu/e3/helpers/HttpHelper;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, result:Ljava/lang/String;
    const-string v2, "post"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v1, Ledu/nctu/e3/helpers/XmlParser;

    const/4 v5, 0x0

    const-string v6, ""

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Ledu/nctu/e3/helpers/XmlParser;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .local v1, parser:Ledu/nctu/e3/helpers/XmlParser;
    invoke-virtual {v1}, Ledu/nctu/e3/helpers/XmlParser;->getMap()Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .end local v1           #parser:Ledu/nctu/e3/helpers/XmlParser;
    .end local v4           #result:Ljava/lang/String;
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #i:I
    .end local v12           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    move-object v11, v10

    .line 90
    .restart local v11       #map:Ljava/lang/Object;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 60
    .end local v11           #map:Ljava/lang/Object;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7       #client:Lorg/apache/http/client/HttpClient;
    .restart local v9       #i:I
    .restart local v12       #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v13       #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    aget-object v3, p3, v9

    add-int/lit8 v9, v9, 0x1

    aget-object v5, p3, v9

    invoke-direct {v2, v3, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 70
    :catch_0
    move-exception v8

    .line 72
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    .line 73
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v8

    .line 75
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 76
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v8

    .line 78
    .local v8, e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 81
    .end local v7           #client:Lorg/apache/http/client/HttpClient;
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #i:I
    .end local v12           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_2
    new-instance v2, Ledu/nctu/e3/helpers/HttpHelper$1;

    invoke-direct {v2, p0}, Ledu/nctu/e3/helpers/HttpHelper$1;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method public static getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .parameter "is"

    .prologue
    .line 134
    const-string v4, ""

    .line 135
    .local v4, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 136
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    .line 137
    .local v5, writer:Ljava/io/Writer;
    const/16 v6, 0x1000

    new-array v0, v6, [C

    .line 139
    .local v0, buffer:[C
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, p0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 140
    .local v3, reader:Ljava/io/Reader;
    const/4 v2, -0x1

    .line 141
    .local v2, n:I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 144
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v2           #n:I
    .end local v3           #reader:Ljava/io/Reader;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    .end local v0           #buffer:[C
    .end local v5           #writer:Ljava/io/Writer;
    :cond_0
    return-object v4

    .line 142
    .restart local v0       #buffer:[C
    .restart local v2       #n:I
    .restart local v3       #reader:Ljava/io/Reader;
    .restart local v5       #writer:Ljava/io/Writer;
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v6, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 145
    .end local v2           #n:I
    .end local v3           #reader:Ljava/io/Reader;
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 150
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isMobileNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 308
    .local v0, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 309
    .local v2, wifiInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 310
    .local v1, mobileInfo:Landroid/net/NetworkInfo;
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public static readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 330
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 332
    .local v3, result:Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 333
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 334
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 335
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 336
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 350
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 337
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 342
    .local v0, e:Ljava/io/StreamCorruptedException;
    invoke-virtual {v0}, Ljava/io/StreamCorruptedException;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0           #e:Ljava/io/StreamCorruptedException;
    :catch_2
    move-exception v0

    .line 345
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 346
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "obj"
    .parameter "fileName"

    .prologue
    .line 315
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 316
    .local v1, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 317
    .local v2, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 318
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 319
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 320
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 324
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 326
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "courseId"
    .parameter "referenceSourceId"
    .parameter "UploaderId"
    .parameter "metaType"
    .parameter "fileName"
    .parameter "medias"
    .parameter "ext"

    .prologue
    const/4 v7, 0x1

    .line 277
    new-instance v3, Lorg/ksoap2/serialization/SoapObject;

    const-string v5, "http://tempuri.org/"

    const-string v6, "FileUploadManage"

    invoke-direct {v3, v5, v6}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .local v3, request:Lorg/ksoap2/serialization/SoapObject;
    const-string v5, "courseId"

    invoke-virtual {v3, v5, p0}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 279
    const-string v5, "referenceSourceId"

    invoke-virtual {v3, v5, p1}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 280
    const-string v5, "UploaderId"

    invoke-virtual {v3, v5, p2}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 281
    const-string v5, "metaType"

    invoke-virtual {v3, v5, p3}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 282
    const-string v5, "fileName"

    invoke-virtual {v3, v5, p4}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 283
    const-string v5, "medias"

    invoke-virtual {v3, v5, p5}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 284
    const-string v5, "ext"

    invoke-virtual {v3, v5, p6}, Lorg/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    .line 285
    new-instance v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;

    const/16 v5, 0x6e

    invoke-direct {v1, v5}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;-><init>(I)V

    .line 286
    .local v1, envelope:Lorg/ksoap2/serialization/SoapSerializationEnvelope;
    invoke-virtual {v1, v3}, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->setOutputSoapObject(Ljava/lang/Object;)V

    .line 287
    iput-boolean v7, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    .line 288
    new-instance v5, Lorg/ksoap2/serialization/MarshalBase64;

    invoke-direct {v5}, Lorg/ksoap2/serialization/MarshalBase64;-><init>()V

    invoke-virtual {v5, v1}, Lorg/ksoap2/serialization/MarshalBase64;->register(Lorg/ksoap2/serialization/SoapSerializationEnvelope;)V

    .line 289
    new-instance v2, Lorg/ksoap2/transport/HttpTransportSE;

    const-string v5, "http://140.113.8.80/mService/app.asmx"

    invoke-direct {v2, v5}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, ht:Lorg/ksoap2/transport/HttpTransportSE;
    iput-boolean v7, v2, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    .line 292
    :try_start_0
    const-string v5, "http://tempuri.org/FileUploadManage"

    invoke-virtual {v2, v5, v1}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V

    .line 293
    iget-object v5, v1, Lorg/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, result:Ljava/lang/String;
    const-string v5, "soap"

    iget-object v6, v2, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const-string v5, "soap"

    iget-object v6, v2, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 304
    .end local v4           #result:Ljava/lang/String;
    :goto_0
    return v5

    .line 297
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 304
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    const/4 v5, -0x1

    goto :goto_0

    .line 300
    :catch_1
    move-exception v0

    .line 302
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_1
.end method

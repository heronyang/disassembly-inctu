.class public Lorg/ksoap2/transport/HttpTransportSE;
.super Lorg/ksoap2/transport/Transport;
.source "HttpTransportSE.java"


# instance fields
.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "url"
    .parameter "timeout"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "url"
    .parameter "timeout"
    .parameter "contentLength"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 0
    .parameter "proxy"
    .parameter "url"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 0
    .parameter "proxy"
    .parameter "url"
    .parameter "timeout"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 0
    .parameter "proxy"
    .parameter "url"
    .parameter "timeout"
    .parameter "contentLength"

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Lorg/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method private getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    check-cast p1, Ljava/util/zip/GZIPInputStream;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local p1
    :goto_0
    return-object p1

    .line 273
    .restart local p1
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v1

    goto :goto_0
.end method


# virtual methods
.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .parameter "soapAction"
    .parameter "envelope"
    .parameter "headers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const-string p1, "\"\""

    .line 139
    :cond_0
    const-string v17, "UTF-8"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/ksoap2/transport/HttpTransportSE;->createRequestData(Lorg/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    move-result-object v15

    .line 141
    .local v15, requestData:[B
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/ksoap2/transport/HttpTransportSE;->requestDump:Ljava/lang/String;

    .line 142
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 144
    invoke-virtual/range {p0 .. p0}, Lorg/ksoap2/transport/HttpTransportSE;->getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;

    move-result-object v5

    .line 146
    .local v5, connection:Lorg/ksoap2/transport/ServiceConnection;
    const-string v17, "User-Agent"

    const-string v18, "ksoap2-android/2.6.0+"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p2

    iget v0, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    move/from16 v17, v0

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 151
    const-string v17, "SOAPAction"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lorg/ksoap2/SoapEnvelope;->version:I

    move/from16 v17, v0

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 155
    const-string v17, "Content-Type"

    const-string v18, "application/soap+xml;charset=utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_1
    const-string v17, "Connection"

    const-string v18, "close"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v17, "Accept-Encoding"

    const-string v18, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v17, "Content-Length"

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    array-length v0, v15

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/ksoap2/transport/ServiceConnection;->setFixedLengthStreamingMode(I)V

    .line 166
    if-eqz p3, :cond_4

    .line 167
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_4

    .line 168
    move-object/from16 v0, p3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ksoap2/HeaderProperty;

    .line 169
    .local v9, hp:Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 141
    .end local v5           #connection:Lorg/ksoap2/transport/ServiceConnection;
    .end local v9           #hp:Lorg/ksoap2/HeaderProperty;
    .end local v10           #i:I
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 157
    .restart local v5       #connection:Lorg/ksoap2/transport/ServiceConnection;
    :cond_3
    const-string v17, "Content-Type"

    const-string v18, "text/xml;charset=utf-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v5, v0, v1}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :cond_4
    const-string v17, "POST"

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/ksoap2/transport/ServiceConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 176
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    .line 178
    .local v13, os:Ljava/io/OutputStream;
    const/16 v17, 0x0

    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v15, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 179
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 180
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    .line 181
    const/4 v15, 0x0

    .line 183
    const/16 v16, 0x0

    .line 184
    .local v16, retHeaders:Ljava/util/List;
    const/4 v4, 0x0

    .line 185
    .local v4, buf:[B
    const/16 v6, 0x2000

    .line 186
    .local v6, contentLength:I
    const/4 v8, 0x0

    .line 189
    .local v8, gZippedContent:Z
    :try_start_0
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getResponseProperties()Ljava/util/List;

    move-result-object v16

    .line 190
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_8

    .line 191
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ksoap2/HeaderProperty;

    .line 193
    .restart local v9       #hp:Lorg/ksoap2/HeaderProperty;
    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_6

    .line 190
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 197
    :cond_6
    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "content-length"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 198
    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    if-eqz v17, :cond_7

    .line 200
    :try_start_1
    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    .line 209
    :cond_7
    :goto_4
    :try_start_2
    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getKey()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Content-Encoding"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual {v9}, Lorg/ksoap2/HeaderProperty;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string v18, "gzip"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 211
    const/4 v8, 0x1

    .line 215
    .end local v9           #hp:Lorg/ksoap2/HeaderProperty;
    :cond_8
    if-eqz v8, :cond_b

    .line 216
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .line 237
    .end local v10           #i:I
    .local v11, is:Ljava/io/InputStream;
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/ksoap2/transport/HttpTransportSE;->debug:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 239
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    if-lez v6, :cond_d

    .end local v6           #contentLength:I
    :goto_6
    invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 241
    .local v3, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 244
    :goto_7
    const/16 v17, 0x0

    const/16 v18, 0x100

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 245
    .local v14, rd:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_e

    .line 251
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 252
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 253
    const/4 v3, 0x0

    .line 254
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/ksoap2/transport/HttpTransportSE;->responseDump:Ljava/lang/String;

    .line 255
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 256
    new-instance v11, Ljava/io/ByteArrayInputStream;

    .end local v11           #is:Ljava/io/InputStream;
    invoke-direct {v11, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 259
    .end local v3           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v14           #rd:I
    .restart local v11       #is:Ljava/io/InputStream;
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v11}, Lorg/ksoap2/transport/HttpTransportSE;->parseResponse(Lorg/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V

    .line 262
    const/4 v13, 0x0

    .line 263
    const/4 v4, 0x0

    .line 264
    return-object v16

    .line 201
    .end local v11           #is:Ljava/io/InputStream;
    .restart local v6       #contentLength:I
    .restart local v9       #hp:Lorg/ksoap2/HeaderProperty;
    .restart local v10       #i:I
    :catch_0
    move-exception v12

    .line 202
    .local v12, nfe:Ljava/lang/NumberFormatException;
    const/16 v6, 0x2000

    goto/16 :goto_4

    .line 219
    .end local v9           #hp:Lorg/ksoap2/HeaderProperty;
    .end local v12           #nfe:Ljava/lang/NumberFormatException;
    :cond_b
    :try_start_3
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v11       #is:Ljava/io/InputStream;
    goto :goto_5

    .line 221
    .end local v10           #i:I
    .end local v11           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 222
    .local v7, e:Ljava/io/IOException;
    if-eqz v8, :cond_c

    .line 223
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/ksoap2/transport/HttpTransportSE;->getUnZippedInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v11

    .line 229
    .restart local v11       #is:Ljava/io/InputStream;
    :goto_8
    if-nez v11, :cond_9

    .line 230
    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->disconnect()V

    .line 231
    throw v7

    .line 226
    .end local v11           #is:Ljava/io/InputStream;
    :cond_c
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-interface {v5}, Lorg/ksoap2/transport/ServiceConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .restart local v11       #is:Ljava/io/InputStream;
    goto :goto_8

    .line 239
    .end local v7           #e:Ljava/io/IOException;
    :cond_d
    const/high16 v6, 0x4

    goto :goto_6

    .line 248
    .end local v6           #contentLength:I
    .restart local v3       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #rd:I
    :cond_e
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v4, v0, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7
.end method

.method public call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;)V
    .locals 1
    .parameter "soapAction"
    .parameter "envelope"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/ksoap2/transport/HttpTransportSE;->call(Ljava/lang/String;Lorg/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 115
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 290
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 295
    :goto_0
    return-object v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 316
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 300
    const/4 v1, -0x1

    .line 303
    .local v1, retVal:I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :goto_0
    return v1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lorg/ksoap2/transport/ServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpTransportSE;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lorg/ksoap2/transport/HttpTransportSE;->url:Ljava/lang/String;

    iget v3, p0, Lorg/ksoap2/transport/HttpTransportSE;->timeout:I

    invoke-direct {v0, v1, v2, v3}, Lorg/ksoap2/transport/ServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 282
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/HttpTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    return-object v0
.end method

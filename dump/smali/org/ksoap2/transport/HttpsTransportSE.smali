.class public Lorg/ksoap2/transport/HttpsTransportSE;
.super Lorg/ksoap2/transport/HttpTransportSE;
.source "HttpsTransportSE.java"


# static fields
.field static final PROTOCOL:Ljava/lang/String; = "https"

.field private static final PROTOCOL_FULL:Ljava/lang/String; = "https://"


# instance fields
.field private final file:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "timeout"

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 27
    iput-object p1, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    .line 28
    iput p2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    .line 29
    iput-object p3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    .line 30
    iput p4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2
    .parameter "proxy"
    .parameter "host"
    .parameter "port"
    .parameter "file"
    .parameter "timeout"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 42
    iput-object p2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    .line 43
    iput p3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    .line 44
    iput-object p4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    .line 45
    iput p5, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    .line 46
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 65
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 91
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 96
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    .prologue
    .line 75
    const/4 v1, -0x1

    .line 78
    .local v1, retVal:I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;

    iget-object v1, p0, Lorg/ksoap2/transport/HttpsTransportSE;->proxy:Ljava/net/Proxy;

    iget-object v2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    iget v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    iget-object v4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    iget v5, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    invoke-direct/range {v0 .. v5}, Lorg/ksoap2/transport/HttpsServiceConnectionSE;-><init>(Ljava/net/Proxy;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    return-object v0
.end method

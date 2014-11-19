.class public Ledu/nctu/e3/helpers/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;,
        Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;
    }
.end annotation


# static fields
.field public static final option_list:I = 0x1

.field public static final option_simple:I


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "handler"
    .parameter "input"
    .parameter "option"
    .parameter "listData"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Ledu/nctu/e3/helpers/XmlParser;->map:Ljava/util/HashMap;

    .line 26
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Ledu/nctu/e3/helpers/XmlParser;->list:Ljava/util/ArrayList;

    .line 29
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 30
    .local v2, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 31
    .local v1, sp:Ljavax/xml/parsers/SAXParser;
    packed-switch p4, :pswitch_data_0

    .line 55
    .end local v1           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v2           #spf:Ljavax/xml/parsers/SAXParserFactory;
    :goto_0
    return-void

    .line 33
    .restart local v1       #sp:Ljavax/xml/parsers/SAXParser;
    .restart local v2       #spf:Ljavax/xml/parsers/SAXParserFactory;
    :pswitch_0
    new-instance v4, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;

    invoke-direct {v4, p0}, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;-><init>(Ledu/nctu/e3/helpers/XmlParser;)V

    .line 34
    .local v4, xmlSimpleHandler:Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5, v4}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 42
    .end local v1           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v2           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #xmlSimpleHandler:Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 45
    invoke-direct {p0, p1, p2}, Ledu/nctu/e3/helpers/XmlParser;->showTimeoutDialog(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 37
    .end local v0           #e:Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v1       #sp:Ljavax/xml/parsers/SAXParser;
    .restart local v2       #spf:Ljavax/xml/parsers/SAXParserFactory;
    :pswitch_1
    :try_start_1
    new-instance v3, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;

    invoke-direct {v3, p0, p5}, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;-><init>(Ledu/nctu/e3/helpers/XmlParser;Ljava/lang/String;)V

    .line 38
    .local v3, xmlListHandler:Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5, v3}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 46
    .end local v1           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v2           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #xmlListHandler:Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;
    :catch_1
    move-exception v0

    .line 48
    .local v0, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 49
    invoke-direct {p0, p1, p2}, Ledu/nctu/e3/helpers/XmlParser;->showTimeoutDialog(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 50
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 52
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 53
    invoke-direct {p0, p1, p2}, Ledu/nctu/e3/helpers/XmlParser;->showTimeoutDialog(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showTimeoutDialog(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 124
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f05008e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 126
    const v1, 0x7f05000f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ledu/nctu/e3/helpers/XmlParser$1;

    invoke-direct {v2, p0, p1}, Ledu/nctu/e3/helpers/XmlParser$1;-><init>(Ledu/nctu/e3/helpers/XmlParser;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 137
    new-instance v1, Ledu/nctu/e3/helpers/XmlParser$2;

    invoke-direct {v1, p0, v0}, Ledu/nctu/e3/helpers/XmlParser$2;-><init>(Ledu/nctu/e3/helpers/XmlParser;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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
    .line 60
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser;->map:Ljava/util/HashMap;

    return-object v0
.end method

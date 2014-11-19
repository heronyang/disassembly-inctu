.class public Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/helpers/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XmlSimpleHandler"
.end annotation


# instance fields
.field body:Ljava/lang/StringBuffer;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Ledu/nctu/e3/helpers/XmlParser;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/helpers/XmlParser;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->this$0:Ledu/nctu/e3/helpers/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 78
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 79
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "name"

    .prologue
    .line 82
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->this$0:Ledu/nctu/e3/helpers/XmlParser;

    iget-object v0, v0, Ledu/nctu/e3/helpers/XmlParser;->map:Ljava/util/HashMap;

    iget-object v1, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->tag:Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 68
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->tag:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->body:Ljava/lang/StringBuffer;

    .line 70
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 73
    iput-object p2, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->tag:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlSimpleHandler;->body:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 75
    return-void
.end method

.class public Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/helpers/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XmlListHandler"
.end annotation


# instance fields
.field body:Ljava/lang/StringBuffer;

.field datas:Ljava/util/HashMap;
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

.field listData:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Ledu/nctu/e3/helpers/XmlParser;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/helpers/XmlParser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "listData"

    .prologue
    .line 91
    iput-object p1, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->this$0:Ledu/nctu/e3/helpers/XmlParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 92
    iput-object p2, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->listData:Ljava/lang/String;

    .line 93
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 110
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 111
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "localName"
    .parameter "name"

    .prologue
    .line 115
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->listData:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->this$0:Ledu/nctu/e3/helpers/XmlParser;

    iget-object v1, v0, Ledu/nctu/e3/helpers/XmlParser;->list:Ljava/util/ArrayList;

    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->datas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->datas:Ljava/util/HashMap;

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->datas:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->datas:Ljava/util/HashMap;

    iget-object v1, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->tag:Ljava/lang/String;

    iget-object v2, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->body:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startDocument()V
    .locals 1

    .prologue
    .line 96
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->tag:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->body:Ljava/lang/StringBuffer;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->datas:Ljava/util/HashMap;

    .line 99
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "uri"
    .parameter "localName"
    .parameter "name"
    .parameter "attributes"

    .prologue
    .line 102
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->listData:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->datas:Ljava/util/HashMap;

    .line 105
    :cond_0
    iput-object p2, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->tag:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Ledu/nctu/e3/helpers/XmlParser$XmlListHandler;->body:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 107
    return-void
.end method

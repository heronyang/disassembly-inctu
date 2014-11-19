.class Ledu/nctu/e3/AddTopicActivity$FileInformation;
.super Ljava/lang/Object;
.source "AddTopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/AddTopicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInformation"
.end annotation


# instance fields
.field public Base64:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field final synthetic this$0:Ledu/nctu/e3/AddTopicActivity;


# direct methods
.method public constructor <init>(Ledu/nctu/e3/AddTopicActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "fileName"
    .parameter "Base64"
    .parameter "ext"

    .prologue
    .line 310
    iput-object p1, p0, Ledu/nctu/e3/AddTopicActivity$FileInformation;->this$0:Ledu/nctu/e3/AddTopicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Ledu/nctu/e3/AddTopicActivity$FileInformation;->fileName:Ljava/lang/String;

    .line 312
    iput-object p3, p0, Ledu/nctu/e3/AddTopicActivity$FileInformation;->Base64:Ljava/lang/String;

    .line 313
    iput-object p4, p0, Ledu/nctu/e3/AddTopicActivity$FileInformation;->ext:Ljava/lang/String;

    .line 314
    return-void
.end method

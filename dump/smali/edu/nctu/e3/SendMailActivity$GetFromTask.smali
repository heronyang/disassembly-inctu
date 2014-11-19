.class Ledu/nctu/e3/SendMailActivity$GetFromTask;
.super Landroid/os/AsyncTask;
.source "SendMailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/SendMailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetFromTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/SendMailActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/SendMailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/SendMailActivity$GetFromTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 228
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, v3, Ledu/nctu/e3/SendMailActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetMemberList"

    const-string v5, "AccountData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "loginTicket"

    aput-object v7, v6, v9

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v7, v7, Ledu/nctu/e3/SendMailActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v10

    const-string v7, "courseId"

    aput-object v7, v6, v11

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v7, v7, Ledu/nctu/e3/SendMailActivity;->courseId:Ljava/lang/String;

    aput-object v7, v6, v12

    const-string v7, "role"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "tea"

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/SendMailActivity;->teachers:Ljava/util/ArrayList;

    .line 229
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, v3, Ledu/nctu/e3/SendMailActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetMemberList"

    const-string v5, "AccountData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "loginTicket"

    aput-object v7, v6, v9

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v7, v7, Ledu/nctu/e3/SendMailActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v10

    const-string v7, "courseId"

    aput-object v7, v6, v11

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v7, v7, Ledu/nctu/e3/SendMailActivity;->courseId:Ljava/lang/String;

    aput-object v7, v6, v12

    const-string v7, "role"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "ta"

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/SendMailActivity;->students:Ljava/util/ArrayList;

    .line 230
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v3, v3, Ledu/nctu/e3/SendMailActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetMemberList"

    const-string v5, "AccountData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "loginTicket"

    aput-object v7, v6, v9

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v7, v7, Ledu/nctu/e3/SendMailActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v10

    const-string v7, "courseId"

    aput-object v7, v6, v11

    iget-object v7, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v7, v7, Ledu/nctu/e3/SendMailActivity;->courseId:Ljava/lang/String;

    aput-object v7, v6, v12

    const-string v7, "role"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "ta"

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/SendMailActivity;->tas:Ljava/util/ArrayList;

    .line 231
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->teachers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    .line 232
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->students:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    .line 233
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->tas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v1, Ledu/nctu/e3/SendMailActivity;->tasSize:I

    .line 234
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->tasSize:I

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    .line 235
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->tasSize:I

    add-int/2addr v2, v3

    new-array v2, v2, [Z

    iput-object v2, v1, Ledu/nctu/e3/SendMailActivity;->tosChecks:[Z

    .line 236
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v2, v2, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    add-int/2addr v2, v3

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->tasSize:I

    add-int/2addr v2, v3

    new-array v2, v2, [Z

    iput-object v2, v1, Ledu/nctu/e3/SendMailActivity;->ccsChecks:[Z

    .line 237
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v1, v1, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    if-lt v0, v1, :cond_0

    .line 240
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v1, v1, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    if-lt v0, v1, :cond_1

    .line 243
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v1, v1, Ledu/nctu/e3/SendMailActivity;->tasSize:I

    if-lt v0, v1, :cond_2

    .line 246
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v2, Ledu/nctu/e3/SendMailActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetPersonalData"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "loginTicket"

    aput-object v5, v4, v9

    aget-object v5, p1, v9

    aput-object v5, v4, v10

    const-string v5, "accountId"

    aput-object v5, v4, v11

    aget-object v5, p1, v10

    aput-object v5, v4, v12

    invoke-static {v1, v2, v3, v4}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "DisplayName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 238
    :cond_0
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v1, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x0

    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v1, v1, Ledu/nctu/e3/SendMailActivity;->teachers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "Name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v1, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v1, v1, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    add-int v3, v0, v1

    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v1, v1, Ledu/nctu/e3/SendMailActivity;->students:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "Name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_2
    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v2, v1, Ledu/nctu/e3/SendMailActivity;->members:[Ljava/lang/String;

    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v1, v1, Ledu/nctu/e3/SendMailActivity;->teachersSize:I

    add-int/2addr v1, v0

    iget-object v3, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget v3, v3, Ledu/nctu/e3/SendMailActivity;->studentsSize:I

    add-int/2addr v3, v1

    iget-object v1, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v1, v1, Ledu/nctu/e3/SendMailActivity;->tas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "Name"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v2, v3

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/SendMailActivity$GetFromTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 254
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    iget-object v0, v0, Ledu/nctu/e3/SendMailActivity;->from:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/SendMailActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 256
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Ledu/nctu/e3/SendMailActivity$GetFromTask;->this$0:Ledu/nctu/e3/SendMailActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/SendMailActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 225
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/SendMailActivity$GetFromTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 251
    return-void
.end method

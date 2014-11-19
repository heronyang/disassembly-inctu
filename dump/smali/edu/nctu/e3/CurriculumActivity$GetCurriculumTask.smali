.class Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;
.super Landroid/os/AsyncTask;
.source "CurriculumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/CurriculumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetCurriculumTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/CurriculumActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/CurriculumActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Ljava/lang/String;
    .locals 17
    .parameter "params"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-boolean v1, v1, Ledu/nctu/e3/CurriculumActivity;->online_curriculum:Z

    if-nez v1, :cond_0

    .line 197
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "stuCourses"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "teaCourses"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "taCourses"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "role"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "stuothers"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->stuothers:Ljava/util/ArrayList;

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "teaothers"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->teaothers:Ljava/util/ArrayList;

    .line 203
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "taothers"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->taothers:Ljava/util/ArrayList;

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "stublocks"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ledu/nctu/e3/helpers/CourseInformation;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "teablocks"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ledu/nctu/e3/helpers/CourseInformation;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v3, "tablocks"

    invoke-static {v1, v3}, Ledu/nctu/e3/helpers/HttpHelper;->readObjectFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ledu/nctu/e3/helpers/CourseInformation;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 207
    :catch_0
    move-exception v10

    .line 208
    .local v10, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v2, "\u5b78\u751f"

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->stuothers:Ljava/util/ArrayList;

    .line 213
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->teaothers:Ljava/util/ArrayList;

    .line 214
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->taothers:Ljava/util/ArrayList;

    goto :goto_0

    .line 217
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetCourseList"

    const-string v5, "CourseData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v16, "loginTicket"

    aput-object v16, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x2

    const-string v16, "accountId"

    aput-object v16, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->accountId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x4

    const-string v16, "role"

    aput-object v16, v6, v7

    const/4 v7, 0x5

    const-string v16, "stu"

    aput-object v16, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    .line 218
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v11, v1, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetCourseList"

    const-string v5, "CourseData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v16, "loginTicket"

    aput-object v16, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x2

    const-string v16, "accountId"

    aput-object v16, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->accountId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x4

    const-string v16, "role"

    aput-object v16, v6, v7

    const/4 v7, 0x5

    const-string v16, "tea"

    aput-object v16, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    .line 241
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v11, v1, :cond_5

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetCourseList"

    const-string v5, "CourseData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v16, "loginTicket"

    aput-object v16, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x2

    const-string v16, "accountId"

    aput-object v16, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->accountId:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x4

    const-string v16, "role"

    aput-object v16, v6, v7

    const/4 v7, 0x5

    const-string v16, "ta"

    aput-object v16, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v1, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    .line 260
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v11, v1, :cond_8

    .line 278
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetPersonalData"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "loginTicket"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v7, v7, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "accountId"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v7, v7, Ledu/nctu/e3/CurriculumActivity;->accountId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getMapFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "Role"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    .line 279
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    const-string v3, "stuCourses"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    const-string v3, "teaCourses"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    const-string v3, "taCourses"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    const-string v3, "stublocks"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    const-string v3, "teablocks"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    const-string v3, "tablocks"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->stuothers:Ljava/util/ArrayList;

    const-string v3, "stuothers"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->teaothers:Ljava/util/ArrayList;

    const-string v3, "teaothers"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->taothers:Ljava/util/ArrayList;

    const-string v3, "taothers"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    const-string v3, "role"

    invoke-static {v1, v2, v3}, Ledu/nctu/e3/helpers/HttpHelper;->saveObjectToFile(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v1, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetCourseTime"

    const-string v5, "CourseTimeData"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "loginTicket"

    aput-object v7, v6, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v7, v7, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x2

    const-string v7, "courseId"

    aput-object v7, v6, v1

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v16, "CourseId"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 220
    .local v8, courseTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 221
    move v12, v11

    .line 222
    .local v12, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v0, v1, Ledu/nctu/e3/CurriculumActivity;->stuothers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Ledu/nctu/e3/helpers/CourseInformation;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "CourseId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "UserRole"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v4, v4, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "CourseName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v5, v5, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "CourseNo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v6, v6, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "CourseName"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ledu/nctu/e3/helpers/CourseInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .end local v12           #index:I
    :cond_2
    const/4 v13, 0x0

    .local v13, j:I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_3

    .line 218
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 225
    :cond_3
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 226
    .local v14, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "WeekDay"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 227
    .local v9, day:I
    const-string v1, "Section"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Ledu/nctu/e3/CurriculumActivity;->convertSectionToInt(Ljava/lang/String;)I
    invoke-static {v1}, Ledu/nctu/e3/CurriculumActivity;->access$0(Ljava/lang/String;)I

    move-result v15

    .line 228
    .local v15, section:I
    add-int/lit8 v1, v15, -0x1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v9

    add-int/lit8 v12, v1, -0x1

    .line 229
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "PositionStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "RoomNo"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "(\u65c1\u807d)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    .line 234
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    .line 235
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    const-string v1, "CourseId"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "CourseNo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stuCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "UserRole"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    .line 224
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 232
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->stublocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "RoomNo"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    goto/16 :goto_5

    .line 242
    .end local v8           #courseTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9           #day:I
    .end local v12           #index:I
    .end local v13           #j:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #section:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v1, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetCourseTime"

    const-string v5, "CourseTimeData"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "loginTicket"

    aput-object v7, v6, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v7, v7, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x2

    const-string v7, "courseId"

    aput-object v7, v6, v1

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v16, "CourseId"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 243
    .restart local v8       #courseTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 244
    move v12, v11

    .line 245
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v0, v1, Ledu/nctu/e3/CurriculumActivity;->teaothers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Ledu/nctu/e3/helpers/CourseInformation;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "CourseId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "UserRole"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v4, v4, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "CourseName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v5, v5, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "CourseNo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v6, v6, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "CourseName"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ledu/nctu/e3/helpers/CourseInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .end local v12           #index:I
    :cond_6
    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_7

    .line 241
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 248
    :cond_7
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 249
    .restart local v14       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "WeekDay"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 250
    .restart local v9       #day:I
    const-string v1, "Section"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Ledu/nctu/e3/CurriculumActivity;->convertSectionToInt(Ljava/lang/String;)I
    invoke-static {v1}, Ledu/nctu/e3/CurriculumActivity;->access$0(Ljava/lang/String;)I

    move-result v15

    .line 251
    .restart local v15       #section:I
    add-int/lit8 v1, v15, -0x1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v9

    add-int/lit8 v12, v1, -0x1

    .line 252
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "RoomNo"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    .line 253
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    const-string v1, "CourseId"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "CourseNo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->teaCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "UserRole"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    .line 247
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_6

    .line 261
    .end local v8           #courseTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v9           #day:I
    .end local v12           #index:I
    .end local v13           #j:I
    .end local v14           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #section:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v1, Ledu/nctu/e3/CurriculumActivity;->handler:Landroid/os/Handler;

    const-string v4, "GetCourseTime"

    const-string v5, "CourseTimeData"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v7, "loginTicket"

    aput-object v7, v6, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v7, v7, Ledu/nctu/e3/CurriculumActivity;->loginTicket:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x2

    const-string v7, "courseId"

    aput-object v7, v6, v1

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v16, "CourseId"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 262
    .restart local v8       #courseTime:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 263
    move v12, v11

    .line 264
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v0, v1, Ledu/nctu/e3/CurriculumActivity;->taothers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    new-instance v1, Ledu/nctu/e3/helpers/CourseInformation;

    move-object/from16 v0, p0

    iget-object v2, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v2, v2, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "CourseId"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v3, v3, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "UserRole"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v4, v4, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "CourseName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v5, v5, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    const-string v6, "CourseNo"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v6, v6, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "CourseName"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ledu/nctu/e3/helpers/CourseInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v12           #index:I
    :cond_9
    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v13, v1, :cond_a

    .line 260
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 267
    :cond_a
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 268
    .restart local v14       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "WeekDay"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 269
    .restart local v9       #day:I
    const-string v1, "Section"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #calls: Ledu/nctu/e3/CurriculumActivity;->convertSectionToInt(Ljava/lang/String;)I
    invoke-static {v1}, Ledu/nctu/e3/CurriculumActivity;->access$0(Ljava/lang/String;)I

    move-result v15

    .line 270
    .restart local v15       #section:I
    add-int/lit8 v1, v15, -0x1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v9

    add-int/lit8 v12, v1, -0x1

    .line 271
    .restart local v12       #index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v1, "RoomNo"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    const-string v1, "CourseName"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    const-string v1, "CourseId"

    invoke-virtual {v14, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "CourseNo"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    .line 275
    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->tablocks:[Ledu/nctu/e3/helpers/CourseInformation;

    aget-object v2, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v1, v1, Ledu/nctu/e3/CurriculumActivity;->taCourses:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "UserRole"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    .line 266
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 294
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const-string v1, "\u5b78\u751f"

    iput-object v1, v0, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    .line 295
    :cond_0
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    iget-object v0, v0, Ledu/nctu/e3/CurriculumActivity;->role:Ljava/lang/String;

    const-string v1, "\u6559\u5e2b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const/4 v1, 0x1

    #calls: Ledu/nctu/e3/CurriculumActivity;->setCurriculum(I)V
    invoke-static {v0, v1}, Ledu/nctu/e3/CurriculumActivity;->access$1(Ledu/nctu/e3/CurriculumActivity;I)V

    .line 300
    :goto_0
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/CurriculumActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 301
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const/4 v1, 0x0

    #calls: Ledu/nctu/e3/CurriculumActivity;->setCurriculum(I)V
    invoke-static {v0, v1}, Ledu/nctu/e3/CurriculumActivity;->access$1(Ledu/nctu/e3/CurriculumActivity;I)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Ledu/nctu/e3/CurriculumActivity$GetCurriculumTask;->this$0:Ledu/nctu/e3/CurriculumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/CurriculumActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 191
    return-void
.end method

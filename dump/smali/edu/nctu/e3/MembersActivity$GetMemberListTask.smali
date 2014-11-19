.class Ledu/nctu/e3/MembersActivity$GetMemberListTask;
.super Landroid/os/AsyncTask;
.source "MembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/nctu/e3/MembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetMemberListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ledu/nctu/e3/MembersActivity;


# direct methods
.method constructor <init>(Ledu/nctu/e3/MembersActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

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

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
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
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 202
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v2, v2, Ledu/nctu/e3/MembersActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetMemberList"

    const-string v4, "AccountData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v6, v6, Ledu/nctu/e3/MembersActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v6, v6, Ledu/nctu/e3/MembersActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "role"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "tea"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/MembersActivity;->teachers:Ljava/util/ArrayList;

    .line 203
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v2, v2, Ledu/nctu/e3/MembersActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetMemberList"

    const-string v4, "AccountData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v6, v6, Ledu/nctu/e3/MembersActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v6, v6, Ledu/nctu/e3/MembersActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "role"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "stu"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/MembersActivity;->students:Ljava/util/ArrayList;

    .line 204
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v2, v2, Ledu/nctu/e3/MembersActivity;->handler:Landroid/os/Handler;

    const-string v3, "GetMemberList"

    const-string v4, "AccountData"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "loginTicket"

    aput-object v6, v5, v8

    iget-object v6, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v6, v6, Ledu/nctu/e3/MembersActivity;->loginTicket:Ljava/lang/String;

    aput-object v6, v5, v9

    const-string v6, "courseId"

    aput-object v6, v5, v10

    iget-object v6, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v6, v6, Ledu/nctu/e3/MembersActivity;->courseId:Ljava/lang/String;

    aput-object v6, v5, v11

    const-string v6, "role"

    aput-object v6, v5, v12

    const/4 v6, 0x5

    const-string v7, "ta"

    aput-object v7, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Ledu/nctu/e3/helpers/HttpHelper;->getListFromServer(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Ledu/nctu/e3/MembersActivity;->tas:Ljava/util/ArrayList;

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    new-instance v1, Ledu/nctu/e3/MembersActivity$MemberAdapter;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, v3, Ledu/nctu/e3/MembersActivity;->teachers:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Ledu/nctu/e3/MembersActivity$MemberAdapter;-><init>(Ledu/nctu/e3/MembersActivity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Ledu/nctu/e3/MembersActivity;->teacherAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    .line 214
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    new-instance v1, Ledu/nctu/e3/MembersActivity$MemberAdapter;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, v3, Ledu/nctu/e3/MembersActivity;->students:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Ledu/nctu/e3/MembersActivity$MemberAdapter;-><init>(Ledu/nctu/e3/MembersActivity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Ledu/nctu/e3/MembersActivity;->studentAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    .line 215
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    new-instance v1, Ledu/nctu/e3/MembersActivity$MemberAdapter;

    iget-object v2, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v3, v3, Ledu/nctu/e3/MembersActivity;->tas:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Ledu/nctu/e3/MembersActivity$MemberAdapter;-><init>(Ledu/nctu/e3/MembersActivity;Ljava/util/ArrayList;)V

    iput-object v1, v0, Ledu/nctu/e3/MembersActivity;->taAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    .line 216
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->teacherList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, v1, Ledu/nctu/e3/MembersActivity;->teacherAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->studentList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, v1, Ledu/nctu/e3/MembersActivity;->studentAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 218
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->taList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, v1, Ledu/nctu/e3/MembersActivity;->taAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->teacherList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, v1, Ledu/nctu/e3/MembersActivity;->teacherAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->studentList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, v1, Ledu/nctu/e3/MembersActivity;->studentAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 221
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v0, v0, Ledu/nctu/e3/MembersActivity;->taList:Landroid/widget/ListView;

    iget-object v1, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    iget-object v1, v1, Ledu/nctu/e3/MembersActivity;->taAdapter:Ledu/nctu/e3/MembersActivity$MemberAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 222
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MembersActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 223
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->this$0:Ledu/nctu/e3/MembersActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ledu/nctu/e3/MembersActivity;->setProgressBarIndeterminateVisibility(I)V

    .line 198
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ledu/nctu/e3/MembersActivity$GetMemberListTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 210
    return-void
.end method

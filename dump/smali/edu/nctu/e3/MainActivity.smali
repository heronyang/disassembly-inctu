.class public Ledu/nctu/e3/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final appFolder:Ljava/lang/String;


# instance fields
.field campusMap:Landroid/widget/Button;

.field curriculum:Landroid/widget/Button;

.field inctu:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/iNCTU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 61
    iget-object v1, p0, Ledu/nctu/e3/MainActivity;->inctu:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/LoginiNCTUActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v1, p0, Ledu/nctu/e3/MainActivity;->curriculum:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/LoginCurriculumActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Ledu/nctu/e3/MainActivity;->campusMap:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/nctu/e3/CampusMapActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Ledu/nctu/e3/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ledu/nctu/e3/MainActivity;->requestWindowFeature(I)Z

    .line 26
    const v1, 0x7f030012

    invoke-virtual {p0, v1}, Ledu/nctu/e3/MainActivity;->setContentView(I)V

    .line 27
    const v1, 0x7f09004f

    invoke-virtual {p0, v1}, Ledu/nctu/e3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/nctu/e3/MainActivity;->inctu:Landroid/widget/Button;

    .line 28
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Ledu/nctu/e3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/nctu/e3/MainActivity;->curriculum:Landroid/widget/Button;

    .line 29
    const v1, 0x7f090050

    invoke-virtual {p0, v1}, Ledu/nctu/e3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Ledu/nctu/e3/MainActivity;->campusMap:Landroid/widget/Button;

    .line 30
    iget-object v1, p0, Ledu/nctu/e3/MainActivity;->campusMap:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v1, p0, Ledu/nctu/e3/MainActivity;->inctu:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v1, p0, Ledu/nctu/e3/MainActivity;->curriculum:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Ledu/nctu/e3/MainActivity;->appFolder:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 37
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 42
    invoke-virtual {p0}, Ledu/nctu/e3/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080012

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 49
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 55
    const/4 v0, 0x1

    return v0
.end method

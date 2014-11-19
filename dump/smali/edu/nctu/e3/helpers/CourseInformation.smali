.class public Ledu/nctu/e3/helpers/CourseInformation;
.super Ljava/lang/Object;
.source "CourseInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field public color:I

.field public courseId:Ljava/lang/String;

.field public courseName:Ljava/lang/String;

.field public courseNo:Ljava/lang/String;

.field public displayStr:Ljava/lang/String;

.field public userRole:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "couseId"
    .parameter "userRole"
    .parameter "courseName"
    .parameter "courseNo"
    .parameter "displayStr"
    .parameter "color"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    .line 22
    iput-object p5, p0, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    .line 23
    iput p6, p0, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    .line 24
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    return v0
.end method

.method public getCourseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 51
    iput p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->color:I

    .line 52
    return-void
.end method

.method public setCourseId(Ljava/lang/String;)V
    .locals 0
    .parameter "courseId"

    .prologue
    .line 36
    iput-object p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setCourseName(Ljava/lang/String;)V
    .locals 0
    .parameter "courseName"

    .prologue
    .line 42
    iput-object p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCourseNo(Ljava/lang/String;)V
    .locals 0
    .parameter "courseNo"

    .prologue
    .line 45
    iput-object p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->courseNo:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setDisplayStr(Ljava/lang/String;)V
    .locals 0
    .parameter "displayStr"

    .prologue
    .line 48
    iput-object p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->displayStr:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUserRole(Ljava/lang/String;)V
    .locals 0
    .parameter "userRole"

    .prologue
    .line 39
    iput-object p1, p0, Ledu/nctu/e3/helpers/CourseInformation;->userRole:Ljava/lang/String;

    .line 40
    return-void
.end method

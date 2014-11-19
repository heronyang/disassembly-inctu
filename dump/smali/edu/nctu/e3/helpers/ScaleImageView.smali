.class public Ledu/nctu/e3/helpers/ScaleImageView;
.super Landroid/widget/ImageView;
.source "ScaleImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private DOUBLE_TAP_SECOND:I

.field private MAX_SCALE:F

.field TAG:Ljava/lang/String;

.field private isDoubleTap:Z

.field private isScaling:Z

.field private mDoubleTapX:I

.field private mDoubleTapY:I

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mLastTime:J

.field private mMatrix:Landroid/graphics/Matrix;

.field private final mMatrixValues:[F

.field private mMinScale:F

.field private mPrevDistance:F

.field private mPrevMoveX:I

.field private mPrevMoveY:I

.field private mScale:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    const/high16 v0, 0x4000

    iput v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->MAX_SCALE:F

    .line 16
    const/16 v0, 0x190

    iput v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->DOUBLE_TAP_SECOND:I

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrixValues:[F

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mLastTime:J

    .line 43
    const-string v0, "ScaleImageView"

    iput-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->TAG:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->initialize()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/high16 v0, 0x4000

    iput v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->MAX_SCALE:F

    .line 16
    const/16 v0, 0x190

    iput v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->DOUBLE_TAP_SECOND:I

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrixValues:[F

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mLastTime:J

    .line 43
    const-string v0, "ScaleImageView"

    iput-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->TAG:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->initialize()V

    .line 48
    return-void
.end method

.method private dispDistance()F
    .locals 3

    .prologue
    .line 179
    iget v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    .line 180
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    mul-int/2addr v1, v2

    .line 179
    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private distance(FFFF)F
    .locals 4
    .parameter "x0"
    .parameter "x1"
    .parameter "y0"
    .parameter "y1"

    .prologue
    .line 173
    sub-float v0, p1, p2

    .line 174
    .local v0, x:F
    sub-float v1, p3, p4

    .line 175
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 62
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Ledu/nctu/e3/helpers/ScaleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 63
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 64
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 65
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicWidth:I

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicHeight:I

    .line 68
    invoke-virtual {p0, p0}, Ledu/nctu/e3/helpers/ScaleImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public cutting()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 149
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicWidth:I

    int-to-float v2, v2

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 150
    .local v1, width:I
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 151
    .local v0, height:I
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateX()F

    move-result v2

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    sub-int v3, v1, v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 152
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateX()F

    move-result v3

    int-to-float v4, v1

    add-float/2addr v3, v4

    iget v4, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 154
    :cond_0
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateX()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 155
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 157
    :cond_1
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateY()F

    move-result v2

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    sub-int v3, v0, v3

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 158
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateY()F

    move-result v3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iget v4, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 160
    :cond_2
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateY()F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_3

    .line 161
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getTranslateY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 163
    :cond_3
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    if-ge v1, v2, :cond_4

    .line 164
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 166
    :cond_4
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    if-ge v0, v2, :cond_5

    .line 167
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 169
    :cond_5
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Ledu/nctu/e3/helpers/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 170
    return-void
.end method

.method protected getScale()F
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ledu/nctu/e3/helpers/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getTranslateX()F
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ledu/nctu/e3/helpers/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getTranslateY()F
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Ledu/nctu/e3/helpers/ScaleImageView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 103
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 104
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoomTo(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 120
    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMinScale:F

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v1

    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMinScale:F

    sub-float/2addr v1, v2

    const v2, 0x3dcccccd

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 122
    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMinScale:F

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v2

    div-float v0, v1, v2

    .line 123
    .local v0, scale:F
    invoke-virtual {p0, v0, p1, p2}, Ledu/nctu/e3/helpers/ScaleImageView;->zoomTo(FII)V

    .line 128
    :goto_0
    return-void

    .line 125
    .end local v0           #scale:F
    :cond_0
    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->MAX_SCALE:F

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v2

    div-float v0, v1, v2

    .line 126
    .restart local v0       #scale:F
    invoke-virtual {p0, v0, p1, p2}, Ledu/nctu/e3/helpers/ScaleImageView;->zoomTo(FII)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 249
    invoke-super {p0, p2}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/high16 v13, 0x41f0

    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 186
    .local v5, touchCount:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 244
    :cond_0
    :goto_0
    return v12

    .line 190
    :sswitch_0
    if-lt v5, v7, :cond_1

    .line 191
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 192
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 191
    invoke-direct {p0, v6, v7, v8, v9}, Ledu/nctu/e3/helpers/ScaleImageView;->distance(FFFF)F

    move-result v1

    .line 193
    .local v1, distance:F
    iput v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevDistance:F

    .line 194
    iput-boolean v12, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isScaling:Z

    goto :goto_0

    .line 196
    .end local v1           #distance:F
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mLastTime:J

    iget v10, p0, Ledu/nctu/e3/helpers/ScaleImageView;->DOUBLE_TAP_SECOND:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 197
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveX:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 198
    iget v7, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveY:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v6, v13, v6

    if-lez v6, :cond_2

    .line 199
    iput-boolean v12, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isDoubleTap:Z

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mDoubleTapX:I

    .line 201
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mDoubleTapY:I

    .line 204
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mLastTime:J

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveX:I

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveY:I

    goto :goto_0

    .line 210
    :sswitch_1
    if-lt v5, v7, :cond_3

    iget-boolean v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isScaling:Z

    if-eqz v6, :cond_3

    .line 211
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 212
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 211
    invoke-direct {p0, v6, v7, v8, v9}, Ledu/nctu/e3/helpers/ScaleImageView;->distance(FFFF)F

    move-result v0

    .line 213
    .local v0, dist:F
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevDistance:F

    sub-float v6, v0, v6

    invoke-direct {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->dispDistance()F

    move-result v7

    div-float v4, v6, v7

    .line 214
    .local v4, scale:F
    iput v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevDistance:F

    .line 215
    const/high16 v6, 0x3f80

    add-float/2addr v4, v6

    .line 216
    mul-float/2addr v4, v4

    .line 217
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0, v4, v6, v7}, Ledu/nctu/e3/helpers/ScaleImageView;->zoomTo(FII)V

    .line 218
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->cutting()V

    goto/16 :goto_0

    .line 219
    .end local v0           #dist:F
    .end local v4           #scale:F
    :cond_3
    iget-boolean v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isScaling:Z

    if-nez v6, :cond_0

    .line 220
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v2, v6, v7

    .line 221
    .local v2, distanceX:I
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v3, v6, v7

    .line 222
    .local v3, distanceY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveX:I

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mPrevMoveY:I

    .line 224
    iget-object v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    neg-int v7, v2

    int-to-float v7, v7

    neg-int v8, v3

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 225
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->cutting()V

    goto/16 :goto_0

    .line 231
    .end local v2           #distanceX:I
    .end local v3           #distanceY:I
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-gt v6, v12, :cond_4

    .line 232
    iput-boolean v9, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isScaling:Z

    .line 233
    iget-boolean v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isDoubleTap:Z

    if-eqz v6, :cond_4

    .line 234
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mDoubleTapX:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 235
    iget v7, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mDoubleTapY:I

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    cmpl-float v6, v13, v6

    if-lez v6, :cond_4

    .line 236
    iget v6, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mDoubleTapX:I

    iget v7, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mDoubleTapY:I

    invoke-virtual {p0, v6, v7}, Ledu/nctu/e3/helpers/ScaleImageView;->maxZoomTo(II)V

    .line 237
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->cutting()V

    .line 241
    :cond_4
    iput-boolean v9, p0, Ledu/nctu/e3/helpers/ScaleImageView;->isDoubleTap:Z

    goto/16 :goto_0

    .line 186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x105 -> :sswitch_0
        0x106 -> :sswitch_2
    .end sparse-switch
.end method

.method protected setFrame(IIII)Z
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 74
    sub-int v2, p3, p1

    iput v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    .line 75
    sub-int v2, p4, p2

    iput v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    .line 77
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 78
    int-to-float v2, p3

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, paddingHeight:I
    const/4 v1, 0x0

    .line 82
    .local v1, paddingWidth:I
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 83
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    int-to-float v2, v2

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mIntrinsicHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    .line 84
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    iget v4, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 85
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    sub-int v2, p3, v2

    div-int/lit8 v1, v2, 0x2

    .line 86
    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 95
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Ledu/nctu/e3/helpers/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 96
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    iput v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMinScale:F

    .line 97
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Ledu/nctu/e3/helpers/ScaleImageView;->zoomTo(FII)V

    .line 98
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->cutting()V

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v2

    return v2

    .line 89
    :cond_0
    iget-object v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    iget v4, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mScale:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 90
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    sub-int v2, p4, v2

    div-int/lit8 v0, v2, 0x2

    .line 91
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 58
    invoke-direct {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->initialize()V

    .line 59
    return-void
.end method

.method protected zoomTo(FII)V
    .locals 6
    .parameter "scale"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/ScaleImageView;->getScale()F

    move-result v0

    mul-float/2addr v0, p1

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->MAX_SCALE:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 137
    :cond_2
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 139
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v5

    .line 140
    iget v2, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v5

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 143
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p3, v1

    neg-int v1, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 145
    iget-object v0, p0, Ledu/nctu/e3/helpers/ScaleImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Ledu/nctu/e3/helpers/ScaleImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

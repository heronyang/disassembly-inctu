.class public Ledu/nctu/e3/helpers/AutoSizeTextView;
.super Landroid/widget/TextView;
.source "AutoSizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;
    }
.end annotation


# static fields
.field public static final MIN_TEXT_SIZE:F = 20.0f

.field private static final mEllipsis:Ljava/lang/String; = "..."


# instance fields
.field private mAddEllipsis:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mNeedsResize:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mTextResizeListener:Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ledu/nctu/e3/helpers/AutoSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ledu/nctu/e3/helpers/AutoSizeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mNeedsResize:Z

    .line 42
    iput v1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMaxTextSize:F

    .line 45
    const/high16 v0, 0x41a0

    iput v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMinTextSize:F

    .line 48
    const/high16 v0, 0x3f80

    iput v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingMult:F

    .line 51
    iput v1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingAdd:F

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mAddEllipsis:Z

    .line 69
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    .line 70
    return-void
.end method

.method private getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I
    .locals 8
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "textSize"

    .prologue
    .line 288
    invoke-virtual {p2, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 290
    new-instance v0, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingMult:F

    iget v6, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingAdd:F

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 291
    .local v0, layout:Landroid/text/StaticLayout;
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    return v1
.end method


# virtual methods
.method public getAddEllipsis()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mAddEllipsis:Z

    return v0
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMinTextSize:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 195
    if-nez p1, :cond_0

    iget-boolean v2, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mNeedsResize:Z

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    sub-int v2, p4, p2

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 197
    .local v1, widthLimit:I
    sub-int v2, p5, p3

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 198
    .local v0, heightLimit:I
    invoke-virtual {p0, v1, v0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->resizeText(II)V

    .line 200
    .end local v0           #heightLimit:I
    .end local v1           #widthLimit:I
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 201
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 87
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mNeedsResize:Z

    .line 90
    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mNeedsResize:Z

    .line 79
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->resetTextSize()V

    .line 80
    return-void
.end method

.method public resetTextSize()V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iget v1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 186
    iget v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    iput v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMaxTextSize:F

    .line 188
    :cond_0
    return-void
.end method

.method public resizeText()V
    .locals 4

    .prologue
    .line 208
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getPaddingTop()I

    move-result v3

    sub-int v0, v2, v3

    .line 209
    .local v0, heightLimit:I
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 210
    .local v1, widthLimit:I
    invoke-virtual {p0, v1, v0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->resizeText(II)V

    .line 211
    return-void
.end method

.method public resizeText(II)V
    .locals 19
    .parameter "width"
    .parameter "height"

    .prologue
    .line 219
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 221
    .local v4, text:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eqz v6, :cond_0

    if-lez p2, :cond_0

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 229
    .local v5, textPaint:Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextSize()F

    move-result v15

    .line 231
    .local v15, oldTextSize:F
    move-object/from16 v0, p0

    iget v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMaxTextSize:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    move-object/from16 v0, p0

    iget v7, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMaxTextSize:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 234
    .local v17, targetTextSize:F
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v4, v5, v1, v2}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v18

    .line 237
    .local v18, textHeight:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMinTextSize:F

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_6

    .line 243
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mAddEllipsis:Z

    if-eqz v6, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMinTextSize:F

    cmpl-float v6, v17, v6

    if-nez v6, :cond_3

    move/from16 v0, v18

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    .line 245
    new-instance v3, Landroid/text/StaticLayout;

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    iget v8, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingMult:F

    move-object/from16 v0, p0

    iget v9, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingAdd:F

    const/4 v10, 0x0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 247
    .local v3, layout:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 250
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->getLineForVertical(I)I

    move-result v6

    add-int/lit8 v13, v6, -0x1

    .line 252
    .local v13, lastLine:I
    if-gez v13, :cond_7

    .line 253
    const-string v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ledu/nctu/e3/helpers/AutoSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    .end local v3           #layout:Landroid/text/StaticLayout;
    .end local v13           #lastLine:I
    :cond_3
    :goto_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 274
    move-object/from16 v0, p0

    iget v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingAdd:F

    move-object/from16 v0, p0

    iget v7, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingMult:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ledu/nctu/e3/helpers/AutoSizeTextView;->setLineSpacing(FF)V

    .line 277
    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextResizeListener:Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;

    if-eqz v6, :cond_4

    .line 278
    move-object/from16 v0, p0

    iget-object v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextResizeListener:Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v6, v0, v15, v1}, Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;->onTextResize(Landroid/widget/TextView;FF)V

    .line 282
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mNeedsResize:Z

    goto/16 :goto_0

    .line 231
    .end local v17           #targetTextSize:F
    .end local v18           #textHeight:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    move/from16 v17, v0

    goto/16 :goto_1

    .line 238
    .restart local v17       #targetTextSize:F
    .restart local v18       #textHeight:I
    :cond_6
    const/high16 v6, 0x4000

    sub-float v6, v17, v6

    move-object/from16 v0, p0

    iget v7, v0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMinTextSize:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 239
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v4, v5, v1, v2}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getTextHeight(Ljava/lang/CharSequence;Landroid/text/TextPaint;IF)I

    move-result v18

    goto/16 :goto_2

    .line 257
    .restart local v3       #layout:Landroid/text/StaticLayout;
    .restart local v13       #lastLine:I
    :cond_7
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v16

    .line 258
    .local v16, start:I
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v12

    .line 259
    .local v12, end:I
    invoke-virtual {v3, v13}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v14

    .line 260
    .local v14, lineWidth:F
    const-string v6, "..."

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 263
    .local v11, ellipseWidth:F
    :goto_4
    move/from16 v0, p1

    int-to-float v6, v0

    add-float v7, v14, v11

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_8

    .line 266
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-interface {v4, v7, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ledu/nctu/e3/helpers/AutoSizeTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 264
    :cond_8
    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v6, v12, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    goto :goto_4
.end method

.method public setAddEllipsis(Z)V
    .locals 0
    .parameter "addEllipsis"

    .prologue
    .line 169
    iput-boolean p1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mAddEllipsis:Z

    .line 170
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 124
    iput p2, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingMult:F

    .line 125
    iput p1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mSpacingAdd:F

    .line 126
    return-void
.end method

.method public setMaxTextSize(F)V
    .locals 0
    .parameter "maxTextSize"

    .prologue
    .line 133
    iput p1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMaxTextSize:F

    .line 134
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->requestLayout()V

    .line 135
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->invalidate()V

    .line 136
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .parameter "minTextSize"

    .prologue
    .line 151
    iput p1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mMinTextSize:F

    .line 152
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->requestLayout()V

    .line 153
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->invalidate()V

    .line 154
    return-void
.end method

.method public setOnResizeListener(Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 97
    iput-object p1, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextResizeListener:Ledu/nctu/e3/helpers/AutoSizeTextView$OnTextResizeListener;

    .line 98
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 106
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    .line 107
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 115
    invoke-virtual {p0}, Ledu/nctu/e3/helpers/AutoSizeTextView;->getTextSize()F

    move-result v0

    iput v0, p0, Ledu/nctu/e3/helpers/AutoSizeTextView;->mTextSize:F

    .line 116
    return-void
.end method

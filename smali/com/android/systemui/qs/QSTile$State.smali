.class public Lcom/android/systemui/qs/QSTile$State;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field public autoMirrorDrawable:Z

.field public contentDescription:Ljava/lang/CharSequence;

.field public disabledByPolicy:Z

.field public dualLabelContentDescription:Ljava/lang/CharSequence;

.field public enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field public expandedAccessibilityClassName:Ljava/lang/String;

.field public icon:Lcom/android/systemui/qs/QSTile$Icon;

.field public label:Ljava/lang/CharSequence;

.field public minimalAccessibilityClassName:Ljava/lang/String;

.field public minimalContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 550
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 550
    return-void
.end method


# virtual methods
.method public copyTo(Lcom/android/systemui/qs/QSTile$State;)Z
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    const/4 v3, 0x0

    .line 563
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 564
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 565
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 568
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 569
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 570
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 569
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 571
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    .line 572
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    .line 571
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 574
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 573
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 575
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 576
    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 575
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 578
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 579
    .local v0, "changed":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 580
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 581
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 582
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 583
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    .line 584
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 586
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    .line 587
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    .line 588
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_4

    .line 589
    iput-object v3, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 595
    :goto_1
    return v0

    .line 565
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 578
    .end local v0    # "changed":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 590
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v1, :cond_5

    .line 591
    new-instance v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    goto :goto_1

    .line 593
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->copyTo(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 600
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 3

    .prologue
    .line 604
    .local p0, "this":Lcom/android/systemui/qs/QSTile$State;, "Lcom/android/systemui/qs/QSTile<TTState;>.State;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTile$State;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 605
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, ",icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 606
    const-string/jumbo v1, ",label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 607
    const-string/jumbo v1, ",contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 608
    const-string/jumbo v1, ",dualLabelContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 609
    const-string/jumbo v1, ",minimalContentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 610
    const-string/jumbo v1, ",minimalAccessibilityClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->minimalAccessibilityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string/jumbo v1, ",expandedAccessibilityClassName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    const-string/jumbo v1, ",autoMirrorDrawable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 613
    const-string/jumbo v1, ",disabledByPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 614
    const-string/jumbo v1, ",enforcedAdmin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTile$State;->enforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    return-object v1
.end method

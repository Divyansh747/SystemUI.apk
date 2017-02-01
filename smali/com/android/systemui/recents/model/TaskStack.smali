.class public Lcom/android/systemui/recents/model/TaskStack;
.super Ljava/lang/Object;
.source "TaskStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskStack$1;,
        Lcom/android/systemui/recents/model/TaskStack$DockState;,
        Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
    }
.end annotation


# instance fields
.field private FREEFORM_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mAffinitiesGroups:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

.field mGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskGrouping;",
            ">;"
        }
    .end annotation
.end field

.field mRawTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Lcom/android/systemui/recents/model/TaskStack$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/model/TaskStack$1;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    .line 556
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 557
    new-instance v0, Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    .line 560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    .line 561
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    .line 565
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    new-instance v1, Lcom/android/systemui/recents/model/TaskStack$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/model/TaskStack$2;-><init>(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->setFilter(Lcom/android/systemui/recents/model/TaskFilter;)Z

    .line 563
    return-void
.end method

.method private createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1056
    .local v1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1057
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1058
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1059
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    return-void
.end method

.method public computeAllTasksList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 795
    return-object v0
.end method

.method public computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1013
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    .line 1014
    .local v4, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1015
    .local v1, "existingComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1016
    .local v3, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskKeys()Ljava/util/ArrayList;

    move-result-object v7

    .line 1017
    .local v7, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1018
    .local v6, "taskKeyCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 1019
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 1022
    .local v5, "t":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget v8, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    if-eq v8, p2, :cond_1

    .line 1018
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1024
    :cond_1
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1025
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1026
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1030
    invoke-virtual {v4, v0, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1031
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1033
    :cond_2
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1037
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v5    # "t":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_3
    return-object v3
.end method

.method createAffiliatedGroupings(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 892
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 893
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 961
    new-instance v11, Landroid/util/ArrayMap;

    invoke-direct {v11}, Landroid/util/ArrayMap;-><init>()V

    .line 962
    .local v11, "tasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v12}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 963
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 964
    .local v8, "taskCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 965
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 977
    .local v7, "t":Lcom/android/systemui/recents/model/Task;
    new-instance v3, Lcom/android/systemui/recents/model/TaskGrouping;

    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v3, v12}, Lcom/android/systemui/recents/model/TaskGrouping;-><init>(I)V

    .line 978
    .local v3, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/model/TaskStack;->addGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 980
    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/model/TaskGrouping;->addTask(Lcom/android/systemui/recents/model/Task;)V

    .line 981
    iget-object v12, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v11, v12, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 984
    .end local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 985
    const v13, 0x7f10024d

    .line 984
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    .line 986
    .local v6, "minAlpha":F
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 987
    .local v9, "taskGroupCount":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_3

    .line 988
    iget-object v12, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskGrouping;

    .line 989
    .restart local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 991
    const/4 v12, 0x1

    if-gt v8, v12, :cond_2

    .line 987
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 993
    :cond_2
    iget-object v12, v3, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    iget v0, v12, Lcom/android/systemui/recents/model/Task;->affiliationColor:I

    .line 994
    .local v0, "affiliationColor":I
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v6

    int-to-float v13, v8

    div-float v2, v12, v13

    .line 995
    .local v2, "alphaStep":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 996
    .local v1, "alpha":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v8, :cond_1

    .line 997
    iget-object v12, v3, Lcom/android/systemui/recents/model/TaskGrouping;->mTaskKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 998
    .restart local v7    # "t":Lcom/android/systemui/recents/model/Task;
    const/4 v12, -0x1

    invoke-static {v0, v12, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v12

    iput v12, v7, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    .line 1000
    sub-float/2addr v1, v2

    .line 996
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 891
    .end local v0    # "affiliationColor":I
    .end local v1    # "alpha":F
    .end local v2    # "alphaStep":F
    .end local v3    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v5    # "j":I
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_3
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 1065
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "TaskStack"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v4, " numStackTasks="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1069
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1070
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1071
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1072
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1073
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v1, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1072
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    return-void
.end method

.method public findTaskWithId(I)Lcom/android/systemui/recents/model/Task;
    .locals 5
    .param p1, "taskId"    # I

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v3

    .line 860
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 861
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 862
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 863
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v4, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v4, p1, :cond_0

    .line 864
    return-object v1

    .line 861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getFreeformTaskCount()I
    .locals 6

    .prologue
    .line 825
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 826
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v0, 0x0

    .line 827
    .local v0, "freeformCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 828
    .local v3, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 829
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 830
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 831
    add-int/lit8 v0, v0, 0x1

    .line 828
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 834
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v0
.end method

.method public getFreeformTasks()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    .local v0, "freeformTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 779
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 780
    .local v3, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 781
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 782
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 783
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return-object v0
.end method

.method public getLaunchTarget()Lcom/android/systemui/recents/model/Task;
    .locals 5

    .prologue
    .line 841
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 842
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 843
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 844
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 845
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-boolean v4, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v4, :cond_0

    .line 846
    return-object v1

    .line 843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 849
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;
    .locals 5
    .param p1, "includeFreeformTasks"    # Z

    .prologue
    const/4 v4, 0x0

    .line 741
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 742
    .local v1, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    return-object v4

    .line 745
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 746
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 747
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_2

    .line 748
    :cond_1
    return-object v2

    .line 745
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 751
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    return-object v4
.end method

.method public getStackTaskCount()I
    .locals 6

    .prologue
    .line 809
    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 810
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v1, 0x0

    .line 811
    .local v1, "stackCount":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 812
    .local v3, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 813
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 814
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-nez v5, :cond_0

    .line 815
    add-int/lit8 v1, v1, 0x1

    .line 812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    return v1
.end method

.method public getStackTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v0

    return v0
.end method

.method public getTaskKeys()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 756
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v3, "taskKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v4

    .line 758
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 759
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 760
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 761
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 763
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return-object v3
.end method

.method public indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->indexOf(Lcom/android/systemui/recents/model/Task;)I

    move-result v0

    return v0
.end method

.method public moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V
    .locals 5
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "newStackId"    # I

    .prologue
    .line 593
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 594
    .local v3, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 595
    .local v2, "taskCount":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x2

    if-ne p2, v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4, p1, v2, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "insertIndex":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 602
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v4

    if-nez v4, :cond_3

    .line 603
    add-int/lit8 v1, v0, 0x1

    .line 607
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4, p1, v1, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;II)V

    goto :goto_0

    .line 601
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public removeAllTasks()V
    .locals 4

    .prologue
    .line 646
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v2

    .line 647
    .local v2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 648
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 649
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V

    .line 650
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 652
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v3, :cond_1

    .line 654
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-interface {v3, p0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 645
    :cond_1
    return-void
.end method

.method public removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V
    .locals 2
    .param p1, "group"    # Lcom/android/systemui/recents/model/TaskGrouping;

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mAffinitiesGroups:Landroid/util/ArrayMap;

    iget v1, p1, Lcom/android/systemui/recents/model/TaskGrouping;->affiliation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    return-void
.end method

.method public removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "fromDockGesture"    # Z

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/FilteredTaskList;->contains(Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/recents/model/TaskStack;->removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V

    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 633
    .local v3, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 639
    .end local v3    # "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 629
    return-void
.end method

.method removeTaskImpl(Lcom/android/systemui/recents/model/FilteredTaskList;Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "taskList"    # Lcom/android/systemui/recents/model/FilteredTaskList;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 614
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/FilteredTaskList;->remove(Lcom/android/systemui/recents/model/Task;)Z

    .line 616
    iget-object v0, p2, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 617
    .local v0, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/TaskGrouping;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    .line 619
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 620
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/model/TaskStack;->removeGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 612
    :cond_0
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    .line 584
    return-void
.end method

.method public setTasks(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "notifyStackChanges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 666
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v12

    .line 667
    .local v12, "currentTasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->createTaskKeyMapFromList(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v15

    .line 668
    .local v15, "newTasksMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task$TaskKey;Lcom/android/systemui/recents/model/Task;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 669
    .local v9, "addedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v17, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 673
    .local v10, "allTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    if-nez v2, :cond_0

    .line 674
    const/16 p3, 0x0

    .line 678
    .end local p3    # "notifyStackChanges":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 679
    .local v19, "taskCount":I
    add-int/lit8 v13, v19, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_2

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/recents/model/Task;

    .line 681
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v15, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 682
    if-eqz p3, :cond_1

    .line 683
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task;->setGroup(Lcom/android/systemui/recents/model/TaskGrouping;)V

    .line 679
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 690
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v19

    .line 691
    const/4 v13, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v13, v0, :cond_5

    .line 692
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recents/model/Task;

    .line 693
    .local v14, "newTask":Lcom/android/systemui/recents/model/Task;
    iget-object v2, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v12, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 694
    .local v11, "currentTask":Lcom/android/systemui/recents/model/Task;
    if-nez v11, :cond_4

    if-eqz p3, :cond_4

    .line 695
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_3
    :goto_2
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 696
    :cond_4
    if-eqz v11, :cond_3

    .line 699
    invoke-virtual {v11, v14}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 700
    move-object v14, v11

    goto :goto_2

    .line 706
    .end local v11    # "currentTask":Lcom/android/systemui/recents/model/Task;
    .end local v14    # "newTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v13, v2, -0x1

    :goto_3
    if-ltz v13, :cond_6

    .line 707
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iput v13, v2, Lcom/android/systemui/recents/model/Task;->temporarySortIndexInStack:I

    .line 706
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 709
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->FREEFORM_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v10, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v2, v10}, Lcom/android/systemui/recents/model/FilteredTaskList;->set(Ljava/util/List;)V

    .line 712
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/recents/model/TaskStack;->mRawTaskList:Ljava/util/ArrayList;

    .line 715
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->createAffiliatedGroupings(Landroid/content/Context;)V

    .line 718
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 719
    .local v16, "removedTaskCount":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 720
    .local v5, "newFrontMostTask":Lcom/android/systemui/recents/model/Task;
    const/4 v13, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v13, v0, :cond_7

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    .line 722
    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    .line 721
    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 720
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 726
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 727
    .local v8, "addedTaskCount":I
    const/4 v13, 0x0

    :goto_5
    if-ge v13, v8, :cond_8

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V

    .line 727
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 732
    :cond_8
    if-eqz p3, :cond_9

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/TaskStack;->mCb:Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;->onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 664
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1042
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Stack Tasks ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/FilteredTaskList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "):\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskStack;->mStackTaskList:Lcom/android/systemui/recents/model/FilteredTaskList;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/FilteredTaskList;->getTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1044
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1045
    .local v2, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1046
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1045
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1048
    :cond_0
    return-object v1
.end method

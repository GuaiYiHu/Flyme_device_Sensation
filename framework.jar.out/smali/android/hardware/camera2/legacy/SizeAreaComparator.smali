.class public Landroid/hardware/camera2/legacy/SizeAreaComparator;
.super Ljava/lang/Object;
.source "SizeAreaComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findLargestByArea(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string/jumbo v0, "sizes must not be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/hardware/camera2/legacy/SizeAreaComparator;

    invoke-direct {v0}, Landroid/hardware/camera2/legacy/SizeAreaComparator;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    return-object v0
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 12
    .param p1, "size"    # Landroid/hardware/Camera$Size;
    .param p2, "size2"    # Landroid/hardware/Camera$Size;

    .prologue
    const/4 v8, 0x1

    const/4 v9, -0x1

    .line 39
    const-string/jumbo v10, "size must not be null"

    invoke-static {p1, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v10, "size2 must not be null"

    invoke-static {p2, v10}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 43
    const/4 v8, 0x0

    .line 55
    :cond_0
    :goto_0
    return v8

    .line 46
    :cond_1
    iget v10, p1, Landroid/hardware/Camera$Size;->width:I

    int-to-long v4, v10

    .line 47
    .local v4, "width":J
    iget v10, p2, Landroid/hardware/Camera$Size;->width:I

    int-to-long v6, v10

    .line 48
    .local v6, "width2":J
    iget v10, p1, Landroid/hardware/Camera$Size;->height:I

    int-to-long v10, v10

    mul-long v0, v4, v10

    .line 49
    .local v0, "area":J
    iget v10, p2, Landroid/hardware/Camera$Size;->height:I

    int-to-long v10, v10

    mul-long v2, v6, v10

    .line 51
    .local v2, "area2":J
    cmp-long v10, v0, v2

    if-nez v10, :cond_2

    .line 52
    cmp-long v10, v4, v6

    if-gtz v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 55
    :cond_2
    cmp-long v10, v0, v2

    if-gtz v10, :cond_0

    move v8, v9

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 32
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/legacy/SizeAreaComparator;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method

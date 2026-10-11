/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.viewers;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.viewers.ColumnLayoutData;

public class ColumnWeightData
extends ColumnLayoutData {
    public static final int MINIMUM_WIDTH = 20;
    public int minimumWidth;
    public int weight;

    public ColumnWeightData(int weight) {
        this(weight, true);
    }

    public ColumnWeightData(int weight, int minimumWidth) {
        this(weight, minimumWidth, true);
    }

    public ColumnWeightData(int weight, int minimumWidth, boolean resizable) {
        super(resizable);
        Assert.isTrue((weight >= 0 ? 1 : 0) != 0);
        Assert.isTrue((minimumWidth >= 0 ? 1 : 0) != 0);
        this.weight = weight;
        this.minimumWidth = minimumWidth;
    }

    public ColumnWeightData(int weight, boolean resizable) {
        this(weight, 20, resizable);
    }
}


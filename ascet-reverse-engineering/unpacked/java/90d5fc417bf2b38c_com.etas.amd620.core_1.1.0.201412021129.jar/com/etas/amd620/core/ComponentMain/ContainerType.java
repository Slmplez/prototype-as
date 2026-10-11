/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.ItemT;
import com.etas.amd620.core.ComponentMain.ItemType;
import org.eclipse.emf.common.util.EList;

public interface ContainerType
extends ItemT {
    public EList<ItemType> getItem();
}


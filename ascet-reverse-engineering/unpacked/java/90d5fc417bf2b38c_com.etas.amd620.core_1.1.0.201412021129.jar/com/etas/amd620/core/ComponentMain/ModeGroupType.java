/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.EnumeratorT;
import com.etas.amd620.core.ComponentMain.ItemT;
import java.math.BigInteger;
import org.eclipse.emf.common.util.EList;

public interface ModeGroupType
extends ItemT {
    public EList<EnumeratorT> getMode();

    public BigInteger getDefaultMode();

    public void setDefaultMode(BigInteger var1);
}


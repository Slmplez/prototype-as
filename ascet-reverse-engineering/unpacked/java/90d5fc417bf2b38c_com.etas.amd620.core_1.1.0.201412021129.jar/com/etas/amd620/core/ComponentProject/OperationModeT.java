/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import java.math.BigInteger;
import org.eclipse.emf.ecore.EObject;

public interface OperationModeT
extends EObject {
    public BigInteger getId();

    public void setId(BigInteger var1);

    public boolean isIsCTMode();

    public void setIsCTMode(boolean var1);

    public void unsetIsCTMode();

    public boolean isSetIsCTMode();

    public boolean isIsStartMode();

    public void setIsStartMode(boolean var1);

    public void unsetIsStartMode();

    public boolean isSetIsStartMode();

    public String getName();

    public void setName(String var1);
}


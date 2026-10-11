/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.FileReferenceT;
import org.eclipse.emf.ecore.EObject;

public interface HeaderFileType
extends EObject {
    public FileReferenceT getFile();

    public void setFile(FileReferenceT var1);

    public boolean isUseGlobal();

    public void setUseGlobal(boolean var1);

    public void unsetUseGlobal();

    public boolean isSetUseGlobal();
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.Formulas;

import com.etas.amd620.core.Formulas.FileReferenceT;
import com.etas.amd620.core.Formulas.SizeT;
import org.eclipse.emf.ecore.EObject;

public interface IconT
extends EObject {
    public FileReferenceT getIconFile();

    public void setIconFile(FileReferenceT var1);

    public SizeT getSize();

    public void setSize(SizeT var1);

    public String getIconName();

    public void setIconName(String var1);

    public String getIconOID();

    public void setIconOID(String var1);
}


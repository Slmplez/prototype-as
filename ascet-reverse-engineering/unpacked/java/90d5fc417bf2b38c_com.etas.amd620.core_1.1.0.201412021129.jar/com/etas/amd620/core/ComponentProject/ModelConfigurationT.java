/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentProject;

import com.etas.amd620.core.ComponentProject.FileReferenceT;
import org.eclipse.emf.ecore.EObject;

public interface ModelConfigurationT
extends EObject {
    public FileReferenceT getFormulasFile();

    public void setFormulasFile(FileReferenceT var1);

    public FileReferenceT getImplementationTypesFile();

    public void setImplementationTypesFile(FileReferenceT var1);
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.FileReferenceT;
import com.etas.amd620.core.ComponentSpecification.FormattedTextT;
import com.etas.amd620.core.ComponentSpecification.HeaderFileType;
import com.etas.amd620.core.ComponentSpecification.MethodBodiesComplexType;
import org.eclipse.emf.ecore.EObject;

public interface CodeVariantType
extends EObject {
    public HeaderFileType getHeaderFile();

    public void setHeaderFile(HeaderFileType var1);

    public FileReferenceT getCodeFile();

    public void setCodeFile(FileReferenceT var1);

    public FileReferenceT getObjectFile();

    public void setObjectFile(FileReferenceT var1);

    public FormattedTextT getHeaderBlock();

    public void setHeaderBlock(FormattedTextT var1);

    public MethodBodiesComplexType getMethodBodies();

    public void setMethodBodies(MethodBodiesComplexType var1);

    public String getGenerator();

    public void setGenerator(String var1);

    public String getImplementationName();

    public void setImplementationName(String var1);

    public String getImplementationOID();

    public void setImplementationOID(String var1);

    public String getTarget();

    public void setTarget(String var1);
}


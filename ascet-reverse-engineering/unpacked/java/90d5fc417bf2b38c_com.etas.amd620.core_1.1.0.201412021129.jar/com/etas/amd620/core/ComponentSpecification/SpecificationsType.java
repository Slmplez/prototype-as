/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentSpecification;

import com.etas.amd620.core.ComponentSpecification.EventSpecificationT;
import com.etas.amd620.core.ComponentSpecification.FileListSpecificationT;
import com.etas.amd620.core.ComponentSpecification.LayoutT;
import com.etas.amd620.core.ComponentSpecification.SpecificationType;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.w3._2000._09.xmldsig.SignatureType;

public interface SpecificationsType
extends EObject {
    public LayoutT getLayout();

    public void setLayout(LayoutT var1);

    public EList<SpecificationType> getSpecification();

    public EventSpecificationT getEventSpecification();

    public void setEventSpecification(EventSpecificationT var1);

    public FileListSpecificationT getFileListSpecification();

    public void setFileListSpecification(FileListSpecificationT var1);

    public SignatureType getSignature();

    public void setSignature(SignatureType var1);

    public String getSchemaVersion();

    public void setSchemaVersion(String var1);

    public String getToolVersion();

    public void setToolVersion(String var1);
}


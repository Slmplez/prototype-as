/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4multiplatform;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.system.fibex.fibex4multiplatform.DefaultValueElement;
import autosar40.system.fibex.fibex4multiplatform.TargetIPduRef;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PduMappingDefaultValue
extends ARObject {
    public TargetIPduRef getTargetIPduRef();

    public void setTargetIPduRef(TargetIPduRef var1);

    public EList<DefaultValueElement> getDefaultValueElements();
}


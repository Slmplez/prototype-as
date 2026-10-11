/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.axis;

import autosar40.commonstructure.axis.SwGenericAxisParamType;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwAxisType
extends ARElement {
    public DocumentationBlock getSwGenericAxisDesc();

    public void setSwGenericAxisDesc(DocumentationBlock var1);

    public EList<SwGenericAxisParamType> getSwGenericAxisParamTypes();
}


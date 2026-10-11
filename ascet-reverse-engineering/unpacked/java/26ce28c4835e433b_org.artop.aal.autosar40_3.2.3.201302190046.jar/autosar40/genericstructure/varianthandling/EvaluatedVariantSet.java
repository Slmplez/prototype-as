/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.varianthandling;

import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.genericstructure.generaltemplateclasses.elementcollection.CollectableElement;
import autosar40.genericstructure.varianthandling.PredefinedVariant;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EvaluatedVariantSet
extends ARElement {
    public String getApprovalStatus();

    public void setApprovalStatus(String var1);

    public void unsetApprovalStatus();

    public boolean isSetApprovalStatus();

    public EList<CollectableElement> getEvaluatedElements();

    public EList<PredefinedVariant> getEvaluatedVariants();
}


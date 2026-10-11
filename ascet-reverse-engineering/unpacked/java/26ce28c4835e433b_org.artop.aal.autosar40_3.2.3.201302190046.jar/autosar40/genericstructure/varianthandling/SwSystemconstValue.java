/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.varianthandling;

import autosar40.commonstructure.systemconstant.SwSystemconst;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.annotation.Annotation;
import autosar40.genericstructure.varianthandling.NumericalValueVariationPoint;
import autosar40.genericstructure.varianthandling.SwSystemconstantValueSet;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwSystemconstValue
extends ARObject {
    public SwSystemconstantValueSet getSwSystemconstantValueSet();

    public void setSwSystemconstantValueSet(SwSystemconstantValueSet var1);

    public SwSystemconst getSwSystemconst();

    public void setSwSystemconst(SwSystemconst var1);

    public NumericalValueVariationPoint getValue();

    public void setValue(NumericalValueVariationPoint var1);

    public EList<Annotation> getAnnotations();
}


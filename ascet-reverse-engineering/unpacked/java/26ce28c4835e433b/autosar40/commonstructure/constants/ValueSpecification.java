/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.commonstructure.constants;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ValueSpecification
extends ARObject,
GValueSpecification {
    public String getShortLabel();

    public void setShortLabel(String var1);

    public void unsetShortLabel();

    public boolean isSetShortLabel();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);

    public boolean _typerequiredforrootconstant(DiagnosticChain var1, Map<Object, Object> var2);
}


/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.swcinternalbehavior.varianthandling;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.genericstructure.varianthandling.AttributeValueVariationPoint;
import autosar40.genericstructure.varianthandling.ConditionByFormula;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface VariationPointProxy
extends Identifiable {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public ConditionByFormula getConditionAccess();

    public void setConditionAccess(ConditionByFormula var1);

    public AttributeValueVariationPoint getValueAccess();

    public void setValueAccess(AttributeValueVariationPoint var1);

    public boolean portcomponentrunnableimplementationimplementedComponent(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean portrequiredInterfaceoclIsOfTypeClientServerInterface(DiagnosticChain var1, Map<Object, Object> var2);
}


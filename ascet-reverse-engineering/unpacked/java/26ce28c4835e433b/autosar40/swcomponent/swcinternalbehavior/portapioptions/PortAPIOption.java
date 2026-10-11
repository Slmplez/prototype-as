/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.swcinternalbehavior.portapioptions;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.swcinternalbehavior.SwcInternalBehavior;
import autosar40.swcomponent.swcinternalbehavior.portapioptions.PortDefinedArgumentValue;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortAPIOption
extends ARObject {
    public SwcInternalBehavior getSwcInternalBehavior();

    public void setSwcInternalBehavior(SwcInternalBehavior var1);

    public Boolean getEnableTakeAddress();

    public void setEnableTakeAddress(Boolean var1);

    public void unsetEnableTakeAddress();

    public boolean isSetEnableTakeAddress();

    public Boolean getIndirectAPI();

    public void setIndirectAPI(Boolean var1);

    public void unsetIndirectAPI();

    public boolean isSetIndirectAPI();

    public EList<PortDefinedArgumentValue> getPortArgValues();

    public PortPrototype getPort();

    public void setPort(PortPrototype var1);

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}


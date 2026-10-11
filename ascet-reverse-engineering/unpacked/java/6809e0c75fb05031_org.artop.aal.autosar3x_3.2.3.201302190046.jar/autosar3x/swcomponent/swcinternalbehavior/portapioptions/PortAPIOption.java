/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.swcomponent.swcinternalbehavior.portapioptions;

import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar3x.swcomponent.swcinternalbehavior.InternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortAPIOption
extends ARObject {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public Boolean getEnableTakeAddress();

    public void setEnableTakeAddress(Boolean var1);

    public void unsetEnableTakeAddress();

    public boolean isSetEnableTakeAddress();

    public Boolean getIndirectAPI();

    public void setIndirectAPI(Boolean var1);

    public void unsetIndirectAPI();

    public boolean isSetIndirectAPI();

    public EList<PrimitiveSpecification> getPortArgValues();

    public PortPrototype getPort();

    public void setPort(PortPrototype var1);
}


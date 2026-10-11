/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.internalbehavior.portapioptions;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.components.PortPrototype;
import autosar21.swcomponent.datatype.constants.PrimitiveSpecification;
import autosar21.swcomponent.internalbehavior.InternalBehavior;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PortAPIOption
extends ARObject {
    public InternalBehavior getInternalBehavior();

    public void setInternalBehavior(InternalBehavior var1);

    public Boolean getIndirectAPI();

    public void setIndirectAPI(Boolean var1);

    public void unsetIndirectAPI();

    public boolean isSetIndirectAPI();

    public EList<PrimitiveSpecification> getPortArgValues();

    public PortPrototype getPort();

    public void setPort(PortPrototype var1);
}


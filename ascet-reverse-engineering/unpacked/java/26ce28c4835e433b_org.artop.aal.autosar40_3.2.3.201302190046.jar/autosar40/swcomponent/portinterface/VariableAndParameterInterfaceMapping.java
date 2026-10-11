/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.portinterface.DataPrototypeMapping;
import autosar40.swcomponent.portinterface.PortInterfaceMapping;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface VariableAndParameterInterfaceMapping
extends PortInterfaceMapping {
    public EList<DataPrototypeMapping> getDataMappings();
}


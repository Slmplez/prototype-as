/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.genericstructure.infrastructure.identifiable.ARElement;
import gautosar.gswcomponents.gdatatype.gdatatypes.GApplicationDataType;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Datatype
extends ARElement,
GApplicationDataType {
    public boolean defvaluesSetOclAny(DiagnosticChain var1, Map<Object, Object> var2);
}


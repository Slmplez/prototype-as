/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.datatype.datatypes;

import autosar3x.swcomponent.datatype.datatypes.PrimitiveType;
import autosar3x.swcomponent.datatype.datatypes.Range;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IntegerType
extends PrimitiveType,
Range {
    public boolean defvaluesvaluesInRangeintersectInteger(DiagnosticChain var1, Map<Object, Object> var2);
}


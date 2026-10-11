/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.constants;

import autosar21.swcomponent.datatype.constants.PrimitiveSpecification;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface StringLiteral
extends PrimitiveSpecification {
    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();

    public boolean _charactersarepartofencoding(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean valuesizevaluetypeoclAsTypeStringTypemaxLength(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean valuetypeoclIsTypeOfStringType(DiagnosticChain var1, Map<Object, Object> var2);
}


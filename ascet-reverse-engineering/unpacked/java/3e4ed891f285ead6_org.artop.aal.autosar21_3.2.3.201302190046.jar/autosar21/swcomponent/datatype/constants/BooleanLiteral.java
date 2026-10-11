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
public interface BooleanLiteral
extends PrimitiveSpecification {
    public Boolean getValue();

    public void setValue(Boolean var1);

    public void unsetValue();

    public boolean isSetValue();

    public boolean value_oclIsTypeOfBooleanType(DiagnosticChain var1, Map<Object, Object> var2);
}


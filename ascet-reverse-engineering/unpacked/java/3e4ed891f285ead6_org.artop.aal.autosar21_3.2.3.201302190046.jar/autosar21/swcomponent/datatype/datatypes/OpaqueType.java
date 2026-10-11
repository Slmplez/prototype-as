/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.datatypes;

import autosar21.swcomponent.datatype.datatypes.PrimitiveType;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface OpaqueType
extends PrimitiveType {
    public Integer getNumberOfBits();

    public void setNumberOfBits(Integer var1);

    public void unsetNumberOfBits();

    public boolean isSetNumberOfBits();

    public boolean numberOfBits0(DiagnosticChain var1, Map<Object, Object> var2);
}


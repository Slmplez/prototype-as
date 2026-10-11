/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gcommonstructure.gconstants.GValueSpecification
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.datatype.constants;

import autosar21.swcomponent.datatype.datatypes.DataPrototype;
import gautosar.gcommonstructure.gconstants.GValueSpecification;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ValueSpecification
extends DataPrototype,
GValueSpecification {
    public boolean _typerequiredforrootconstant(DiagnosticChain var1, Map<Object, Object> var2);
}


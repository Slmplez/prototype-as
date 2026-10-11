/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.commonstructure.filter;

import autosar3x.genericstructure.infrastructure.ARObject;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface DataFilter
extends ARObject {
    public boolean mask0(DiagnosticChain var1, Map<Object, Object> var2);

    public boolean Periodgreater0(DiagnosticChain var1, Map<Object, Object> var2);
}


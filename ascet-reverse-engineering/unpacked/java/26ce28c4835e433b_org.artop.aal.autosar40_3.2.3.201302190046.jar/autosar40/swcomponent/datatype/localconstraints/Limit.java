/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit
 *  gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.datatype.localconstraints;

import autosar40.genericstructure.varianthandling.AbstractNumericalVariationPoint;
import autosar40.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import gautosar.gswcomponents.gdatatype.gdatatypes.GARLimit;
import gautosar.gswcomponents.gdatatype.gdatatypes.glocalconstraints.GLimit;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Limit
extends AbstractNumericalVariationPoint,
GARLimit,
GLimit {
    public IntervalTypeEnum getIntervalType();

    public void setIntervalType(IntervalTypeEnum var1);

    public void unsetIntervalType();

    public boolean isSetIntervalType();

    public boolean bindingTimePreCompiletime(DiagnosticChain var1, Map<Object, Object> var2);
}


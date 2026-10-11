/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.applicationattributes;

import autosar40.genericstructure.generaltemplateclasses.multidimensionaltime.MultidimensionalTime;
import autosar40.swcomponent.applicationattributes.SenderReceiverAnnotation;

public interface ReceiverAnnotation
extends SenderReceiverAnnotation {
    public MultidimensionalTime getSignalAge();

    public void setSignalAge(MultidimensionalTime var1);
}


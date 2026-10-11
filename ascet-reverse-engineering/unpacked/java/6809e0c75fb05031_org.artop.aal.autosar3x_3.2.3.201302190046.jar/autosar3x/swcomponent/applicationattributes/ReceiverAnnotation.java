/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.applicationattributes;

import autosar3x.swcomponent.applicationattributes.SenderReceiverAnnotation;

public interface ReceiverAnnotation
extends SenderReceiverAnnotation {
    public Double getSignalAge();

    public void setSignalAge(Double var1);

    public void unsetSignalAge();

    public boolean isSetSignalAge();
}


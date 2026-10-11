/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify;

import org.eclipse.emf.common.notify.Notification;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NotificationWrapper
implements Notification {
    protected Notification notification;
    protected Object notifier;

    public NotificationWrapper(Notification notification) {
        this.notification = notification;
    }

    public NotificationWrapper(Object notifier, Notification notification) {
        this.notifier = notifier;
        this.notification = notification;
    }

    @Override
    public Object getNotifier() {
        return this.notifier == null ? this.notification.getNotifier() : this.notifier;
    }

    @Override
    public int getEventType() {
        return this.notification.getEventType();
    }

    @Override
    public int getFeatureID(Class<?> expectedClass) {
        return this.notification.getFeatureID(expectedClass);
    }

    @Override
    public Object getFeature() {
        return this.notification.getFeature();
    }

    @Override
    public Object getOldValue() {
        return this.notification.getOldValue();
    }

    @Override
    public Object getNewValue() {
        return this.notification.getNewValue();
    }

    @Override
    public boolean wasSet() {
        return this.notification.wasSet();
    }

    @Override
    public boolean isTouch() {
        return this.notification.isTouch();
    }

    @Override
    public boolean isReset() {
        return this.notification.isReset();
    }

    @Override
    public int getPosition() {
        return this.notification.getPosition();
    }

    @Override
    public boolean merge(Notification notification) {
        return false;
    }

    @Override
    public boolean getOldBooleanValue() {
        return this.notification.getOldBooleanValue();
    }

    @Override
    public boolean getNewBooleanValue() {
        return this.notification.getNewBooleanValue();
    }

    @Override
    public byte getOldByteValue() {
        return this.notification.getOldByteValue();
    }

    @Override
    public byte getNewByteValue() {
        return this.notification.getNewByteValue();
    }

    @Override
    public char getOldCharValue() {
        return this.notification.getOldCharValue();
    }

    @Override
    public char getNewCharValue() {
        return this.notification.getNewCharValue();
    }

    @Override
    public double getOldDoubleValue() {
        return this.notification.getOldDoubleValue();
    }

    @Override
    public double getNewDoubleValue() {
        return this.notification.getNewDoubleValue();
    }

    @Override
    public float getOldFloatValue() {
        return this.notification.getOldFloatValue();
    }

    @Override
    public float getNewFloatValue() {
        return this.notification.getNewFloatValue();
    }

    @Override
    public int getOldIntValue() {
        return this.notification.getOldIntValue();
    }

    @Override
    public int getNewIntValue() {
        return this.notification.getNewIntValue();
    }

    @Override
    public long getOldLongValue() {
        return this.notification.getOldLongValue();
    }

    @Override
    public long getNewLongValue() {
        return this.notification.getNewLongValue();
    }

    @Override
    public short getOldShortValue() {
        return this.notification.getOldShortValue();
    }

    @Override
    public short getNewShortValue() {
        return this.notification.getNewShortValue();
    }

    @Override
    public String getOldStringValue() {
        return this.notification.getOldStringValue();
    }

    @Override
    public String getNewStringValue() {
        return this.notification.getNewStringValue();
    }
}


/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.common.notify.impl;

import java.util.List;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.notify.Notifier;
import org.eclipse.emf.common.notify.impl.NotificationChainImpl;
import org.eclipse.emf.common.util.BasicEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class NotificationImpl
implements Notification,
NotificationChain {
    public static final int PRIMITIVE_TYPE_OBJECT = -1;
    public static final int PRIMITIVE_TYPE_BOOLEAN = 0;
    public static final int PRIMITIVE_TYPE_BYTE = 1;
    public static final int PRIMITIVE_TYPE_CHAR = 2;
    public static final int PRIMITIVE_TYPE_DOUBLE = 3;
    public static final int PRIMITIVE_TYPE_FLOAT = 4;
    public static final int PRIMITIVE_TYPE_INT = 5;
    public static final int PRIMITIVE_TYPE_LONG = 6;
    public static final int PRIMITIVE_TYPE_SHORT = 7;
    protected static final int IS_SET_CHANGE_INDEX = -2;
    protected int primitiveType;
    protected int eventType;
    protected Object oldValue;
    protected Object newValue;
    protected long oldSimplePrimitiveValue;
    protected long newSimplePrimitiveValue;
    protected double oldIEEEPrimitiveValue;
    protected double newIEEEPrimitiveValue;
    protected int position;
    protected NotificationChain next;

    public NotificationImpl(int eventType, Object oldValue, Object newValue) {
        this(eventType, oldValue, newValue, -1);
    }

    public NotificationImpl(int eventType, Object oldValue, Object newValue, boolean isSetChange) {
        this(eventType, oldValue, newValue, isSetChange ? -2 : -1);
    }

    public NotificationImpl(int eventType, Object oldValue, Object newValue, int position) {
        this.eventType = eventType;
        this.oldValue = oldValue;
        this.newValue = newValue;
        this.position = position;
        this.primitiveType = -1;
    }

    public NotificationImpl(int eventType, Object oldValue, Object newValue, int position, boolean wasSet) {
        this.eventType = eventType;
        this.oldValue = oldValue;
        this.newValue = newValue;
        this.position = position;
        this.primitiveType = -1;
        if (!wasSet) {
            this.position = -2 - position - 1;
        }
    }

    public NotificationImpl(int eventType, boolean oldBooleanValue, boolean newBooleanValue, boolean isSetChange) {
        this(eventType, oldBooleanValue, newBooleanValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, boolean oldBooleanValue, boolean newBooleanValue) {
        this.eventType = eventType;
        this.oldSimplePrimitiveValue = oldBooleanValue ? 1 : 0;
        this.newSimplePrimitiveValue = newBooleanValue ? 1 : 0;
        this.position = -1;
        this.primitiveType = 0;
    }

    public NotificationImpl(int eventType, byte oldByteValue, byte newByteValue, boolean isSetChange) {
        this(eventType, oldByteValue, newByteValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, byte oldByteValue, byte newByteValue) {
        this.eventType = eventType;
        this.oldSimplePrimitiveValue = oldByteValue;
        this.newSimplePrimitiveValue = newByteValue;
        this.position = -1;
        this.primitiveType = 1;
    }

    public NotificationImpl(int eventType, char oldCharValue, char newCharValue, boolean isSetChange) {
        this(eventType, oldCharValue, newCharValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, char oldCharValue, char newCharValue) {
        this.eventType = eventType;
        this.oldSimplePrimitiveValue = oldCharValue;
        this.newSimplePrimitiveValue = newCharValue;
        this.position = -1;
        this.primitiveType = 2;
    }

    public NotificationImpl(int eventType, double oldDoubleValue, double newDoubleValue, boolean isSetChange) {
        this(eventType, oldDoubleValue, newDoubleValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, double oldDoubleValue, double newDoubleValue) {
        this.eventType = eventType;
        this.oldIEEEPrimitiveValue = oldDoubleValue;
        this.newIEEEPrimitiveValue = newDoubleValue;
        this.position = -1;
        this.primitiveType = 3;
    }

    public NotificationImpl(int eventType, float oldFloatValue, float newFloatValue, boolean isSetChange) {
        this(eventType, oldFloatValue, newFloatValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, float oldFloatValue, float newFloatValue) {
        this.eventType = eventType;
        this.oldIEEEPrimitiveValue = oldFloatValue;
        this.newIEEEPrimitiveValue = newFloatValue;
        this.position = -1;
        this.primitiveType = 4;
    }

    public NotificationImpl(int eventType, int oldIntValue, int newIntValue, boolean isSetChange) {
        this(eventType, oldIntValue, newIntValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, int oldIntValue, int newIntValue) {
        this.eventType = eventType;
        this.oldSimplePrimitiveValue = oldIntValue;
        this.newSimplePrimitiveValue = newIntValue;
        this.position = -1;
        this.primitiveType = 5;
    }

    public NotificationImpl(int eventType, long oldLongValue, long newLongValue, boolean isSetChange) {
        this(eventType, oldLongValue, newLongValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, long oldLongValue, long newLongValue) {
        this.eventType = eventType;
        this.oldSimplePrimitiveValue = oldLongValue;
        this.newSimplePrimitiveValue = newLongValue;
        this.position = -1;
        this.primitiveType = 6;
    }

    public NotificationImpl(int eventType, short oldShortValue, short newShortValue, boolean isSetChange) {
        this(eventType, oldShortValue, newShortValue);
        if (isSetChange) {
            this.position = -2;
        }
    }

    public NotificationImpl(int eventType, short oldShortValue, short newShortValue) {
        this.eventType = eventType;
        this.oldSimplePrimitiveValue = oldShortValue;
        this.newSimplePrimitiveValue = newShortValue;
        this.position = -1;
        this.primitiveType = 7;
    }

    @Override
    public Object getNotifier() {
        return null;
    }

    @Override
    public int getEventType() {
        return this.eventType;
    }

    @Override
    public Object getFeature() {
        return null;
    }

    @Override
    public int getFeatureID(Class<?> expectedClass) {
        return -1;
    }

    @Override
    public Object getOldValue() {
        if (this.oldValue == null) {
            switch (this.primitiveType) {
                case 0: {
                    this.oldValue = this.getOldBooleanValue() ? Boolean.TRUE : Boolean.FALSE;
                    break;
                }
                case 1: {
                    this.oldValue = this.getOldByteValue();
                    break;
                }
                case 2: {
                    this.oldValue = Character.valueOf(this.getOldCharValue());
                    break;
                }
                case 3: {
                    this.oldValue = this.getOldDoubleValue();
                    break;
                }
                case 4: {
                    this.oldValue = Float.valueOf(this.getOldFloatValue());
                    break;
                }
                case 6: {
                    this.oldValue = this.getOldLongValue();
                    break;
                }
                case 5: {
                    this.oldValue = this.getOldIntValue();
                    break;
                }
                case 7: {
                    this.oldValue = this.getOldShortValue();
                }
            }
        }
        return this.oldValue;
    }

    @Override
    public Object getNewValue() {
        if (this.newValue == null) {
            switch (this.primitiveType) {
                case 0: {
                    this.newValue = this.getNewBooleanValue() ? Boolean.TRUE : Boolean.FALSE;
                    break;
                }
                case 1: {
                    this.newValue = this.getNewByteValue();
                    break;
                }
                case 2: {
                    this.newValue = Character.valueOf(this.getNewCharValue());
                    break;
                }
                case 3: {
                    this.newValue = this.getNewDoubleValue();
                    break;
                }
                case 4: {
                    this.newValue = Float.valueOf(this.getNewFloatValue());
                    break;
                }
                case 6: {
                    this.newValue = this.getNewLongValue();
                    break;
                }
                case 5: {
                    this.newValue = this.getNewIntValue();
                    break;
                }
                case 7: {
                    this.newValue = this.getNewShortValue();
                }
            }
        }
        return this.newValue;
    }

    @Override
    public boolean isTouch() {
        switch (this.eventType) {
            case 8: 
            case 9: {
                return true;
            }
            case 3: 
            case 4: 
            case 5: 
            case 6: {
                return false;
            }
            case 7: {
                return (Integer)this.getOldValue() == this.position;
            }
            case 1: 
            case 2: {
                if (this.position == -2) {
                    return false;
                }
                switch (this.primitiveType) {
                    case 0: 
                    case 1: 
                    case 2: 
                    case 5: 
                    case 6: 
                    case 7: {
                        return this.oldSimplePrimitiveValue == this.newSimplePrimitiveValue;
                    }
                    case 3: 
                    case 4: {
                        return this.oldIEEEPrimitiveValue == this.newIEEEPrimitiveValue;
                    }
                }
                return this.oldValue == null ? this.newValue == null : this.oldValue.equals(this.newValue);
            }
        }
        return false;
    }

    @Override
    public boolean isReset() {
        switch (this.eventType) {
            case 1: {
                Object defaultValue = this.getFeatureDefaultValue();
                switch (this.primitiveType) {
                    case 0: {
                        return defaultValue != null && (Boolean)defaultValue == (this.newSimplePrimitiveValue != 0L);
                    }
                    case 1: {
                        return defaultValue != null && (Byte)defaultValue == (byte)this.newSimplePrimitiveValue;
                    }
                    case 2: {
                        return defaultValue != null && ((Character)defaultValue).charValue() == (char)this.newSimplePrimitiveValue;
                    }
                    case 6: {
                        return defaultValue != null && (Long)defaultValue == this.newSimplePrimitiveValue;
                    }
                    case 5: {
                        return defaultValue != null && (Integer)defaultValue == (int)this.newSimplePrimitiveValue;
                    }
                    case 7: {
                        return defaultValue != null && (Short)defaultValue == (short)this.newSimplePrimitiveValue;
                    }
                    case 3: {
                        return defaultValue != null && (Double)defaultValue == this.newIEEEPrimitiveValue;
                    }
                    case 4: {
                        return defaultValue != null && ((Float)defaultValue).floatValue() == (float)this.newIEEEPrimitiveValue;
                    }
                }
                return defaultValue == null ? this.newValue == null : defaultValue.equals(this.newValue);
            }
            case 2: {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean wasSet() {
        switch (this.eventType) {
            case 1: {
                if (!this.isFeatureUnsettable()) break;
                return this.position != -2;
            }
            case 2: {
                if (!this.isFeatureUnsettable()) break;
                return this.position == -2;
            }
            case 3: 
            case 4: 
            case 5: 
            case 6: 
            case 7: {
                return this.position > -2;
            }
            default: {
                return false;
            }
        }
        Object defaultValue = this.getFeatureDefaultValue();
        switch (this.primitiveType) {
            case 0: {
                return defaultValue != null && (Boolean)defaultValue != (this.oldSimplePrimitiveValue != 0L);
            }
            case 1: {
                return defaultValue != null && (Byte)defaultValue != (byte)this.oldSimplePrimitiveValue;
            }
            case 2: {
                return defaultValue != null && ((Character)defaultValue).charValue() != (char)this.oldSimplePrimitiveValue;
            }
            case 6: {
                return defaultValue != null && (Long)defaultValue != this.oldSimplePrimitiveValue;
            }
            case 5: {
                return defaultValue != null && (Integer)defaultValue != (int)this.oldSimplePrimitiveValue;
            }
            case 7: {
                return defaultValue != null && (Short)defaultValue != (short)this.oldSimplePrimitiveValue;
            }
            case 3: {
                return defaultValue != null && (Double)defaultValue != this.oldIEEEPrimitiveValue;
            }
            case 4: {
                return defaultValue != null && ((Float)defaultValue).floatValue() != (float)this.oldIEEEPrimitiveValue;
            }
        }
        return defaultValue == null ? this.oldValue != null : !defaultValue.equals(this.oldValue);
    }

    protected boolean isFeatureUnsettable() {
        return false;
    }

    protected Object getFeatureDefaultValue() {
        return null;
    }

    @Override
    public int getPosition() {
        return this.position < 0 ? (this.position < -2 ? -2 - this.position - 1 : -1) : this.position;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean merge(Notification notification) {
        switch (this.eventType) {
            case 1: 
            case 2: {
                Object notificationNotifier;
                int notificationEventType = notification.getEventType();
                switch (notificationEventType) {
                    case 1: 
                    case 2: {
                        notificationNotifier = notification.getNotifier();
                        if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) break;
                        this.newValue = notification.getNewValue();
                        if (notification.getEventType() != 1) return true;
                        this.eventType = 1;
                        return true;
                    }
                }
            }
            case 4: {
                Object notificationNotifier;
                int notificationEventType = notification.getEventType();
                switch (notificationEventType) {
                    case 4: {
                        notificationNotifier = notification.getNotifier();
                        if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                        boolean originalWasSet = this.wasSet();
                        int originalPosition = this.getPosition();
                        int notificationPosition = notification.getPosition();
                        this.eventType = 6;
                        BasicEList<Object> removedValues = new BasicEList<Object>(2);
                        if (originalPosition <= notificationPosition) {
                            removedValues.add(this.oldValue);
                            removedValues.add(notification.getOldValue());
                            this.position = originalPosition;
                            this.newValue = new int[]{this.position, notificationPosition + 1};
                        } else {
                            removedValues.add(notification.getOldValue());
                            removedValues.add(this.oldValue);
                            this.position = notificationPosition;
                            this.newValue = new int[]{this.position, originalPosition};
                        }
                        this.oldValue = removedValues;
                        if (originalWasSet) return true;
                        this.position = -2 - this.position - 1;
                        return true;
                    }
                }
                return false;
            }
            case 6: {
                int notificationEventType = notification.getEventType();
                switch (notificationEventType) {
                    case 4: {
                        Object notificationNotifier = notification.getNotifier();
                        if (notificationNotifier != this.getNotifier() || this.getFeatureID(null) != notification.getFeatureID(null)) return false;
                        boolean originalWasSet = this.wasSet();
                        int notificationPosition = notification.getPosition();
                        int[] positions = (int[])this.newValue;
                        int[] newPositions = new int[positions.length + 1];
                        int index = 0;
                        while (index < positions.length) {
                            int oldPosition = positions[index];
                            if (oldPosition > notificationPosition) break;
                            newPositions[index++] = oldPosition;
                            ++notificationPosition;
                        }
                        List list = (List)this.oldValue;
                        list.add(index, notification.getOldValue());
                        newPositions[index] = notificationPosition;
                        while (++index < newPositions.length) {
                            newPositions[index] = positions[index - 1];
                        }
                        this.newValue = newPositions;
                        if (originalWasSet) return true;
                        this.position = -2 - newPositions[0];
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override
    public boolean getOldBooleanValue() {
        if (this.primitiveType != 0) {
            throw new IllegalStateException();
        }
        return this.oldSimplePrimitiveValue != 0L;
    }

    @Override
    public boolean getNewBooleanValue() {
        if (this.primitiveType != 0) {
            throw new IllegalStateException();
        }
        return this.newSimplePrimitiveValue != 0L;
    }

    @Override
    public byte getOldByteValue() {
        if (this.primitiveType != 1) {
            throw new IllegalStateException();
        }
        return (byte)this.oldSimplePrimitiveValue;
    }

    @Override
    public byte getNewByteValue() {
        if (this.primitiveType != 1) {
            throw new IllegalStateException();
        }
        return (byte)this.newSimplePrimitiveValue;
    }

    @Override
    public char getOldCharValue() {
        if (this.primitiveType != 2) {
            throw new IllegalStateException();
        }
        return (char)this.oldSimplePrimitiveValue;
    }

    @Override
    public char getNewCharValue() {
        if (this.primitiveType != 2) {
            throw new IllegalStateException();
        }
        return (char)this.newSimplePrimitiveValue;
    }

    @Override
    public double getOldDoubleValue() {
        if (this.primitiveType != 3) {
            throw new IllegalStateException();
        }
        return this.oldIEEEPrimitiveValue;
    }

    @Override
    public double getNewDoubleValue() {
        if (this.primitiveType != 3) {
            throw new IllegalStateException();
        }
        return this.newIEEEPrimitiveValue;
    }

    @Override
    public float getOldFloatValue() {
        if (this.primitiveType != 4) {
            throw new IllegalStateException();
        }
        return (float)this.oldIEEEPrimitiveValue;
    }

    @Override
    public float getNewFloatValue() {
        if (this.primitiveType != 4) {
            throw new IllegalStateException();
        }
        return (float)this.newIEEEPrimitiveValue;
    }

    @Override
    public int getOldIntValue() {
        if (this.primitiveType != 5) {
            throw new IllegalStateException();
        }
        return (int)this.oldSimplePrimitiveValue;
    }

    @Override
    public int getNewIntValue() {
        if (this.primitiveType != 5) {
            throw new IllegalStateException();
        }
        return (int)this.newSimplePrimitiveValue;
    }

    @Override
    public long getOldLongValue() {
        if (this.primitiveType != 6) {
            throw new IllegalStateException();
        }
        return this.oldSimplePrimitiveValue;
    }

    @Override
    public long getNewLongValue() {
        if (this.primitiveType != 6) {
            throw new IllegalStateException();
        }
        return this.newSimplePrimitiveValue;
    }

    @Override
    public short getOldShortValue() {
        if (this.primitiveType != 7) {
            throw new IllegalStateException();
        }
        return (short)this.oldSimplePrimitiveValue;
    }

    @Override
    public short getNewShortValue() {
        if (this.primitiveType != 7) {
            throw new IllegalStateException();
        }
        return (short)this.newSimplePrimitiveValue;
    }

    @Override
    public String getOldStringValue() {
        return this.oldValue == null ? null : this.oldValue.toString();
    }

    @Override
    public String getNewStringValue() {
        return this.newValue == null ? null : this.newValue.toString();
    }

    @Override
    public boolean add(Notification newNotification) {
        if (newNotification == null) {
            return false;
        }
        if (this.merge(newNotification)) {
            return false;
        }
        if (this.next == null) {
            if (newNotification instanceof NotificationImpl) {
                this.next = (NotificationImpl)newNotification;
                return true;
            }
            this.next = new NotificationChainImpl();
            return this.next.add(newNotification);
        }
        return this.next.add(newNotification);
    }

    @Override
    public void dispatch() {
        Object notifier = this.getNotifier();
        if (notifier != null && this.getEventType() != -1) {
            ((Notifier)notifier).eNotify(this);
        }
        if (this.next != null) {
            this.next.dispatch();
        }
    }

    public String toString() {
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (eventType: ");
        switch (this.eventType) {
            case 1: {
                result.append("SET");
                break;
            }
            case 2: {
                result.append("UNSET");
                break;
            }
            case 3: {
                result.append("ADD");
                break;
            }
            case 5: {
                result.append("ADD_MANY");
                break;
            }
            case 4: {
                result.append("REMOVE");
                break;
            }
            case 6: {
                result.append("REMOVE_MANY");
                break;
            }
            case 7: {
                result.append("MOVE");
                break;
            }
            case 8: {
                result.append("REMOVING_ADAPTER");
                break;
            }
            case 9: {
                result.append("RESOLVE");
                break;
            }
            default: {
                result.append(this.eventType);
            }
        }
        if (this.isTouch()) {
            result.append(", touch: true");
        }
        result.append(", position: ");
        result.append(this.getPosition());
        result.append(", notifier: ");
        result.append(this.getNotifier());
        result.append(", feature: ");
        result.append(this.getFeature());
        result.append(", oldValue: ");
        result.append(this.getOldValue());
        result.append(", newValue: ");
        if (this.eventType == 6 && this.newValue instanceof int[]) {
            int[] positions = (int[])this.newValue;
            result.append("[");
            int i = 0;
            while (i < positions.length) {
                result.append(positions[i]);
                if (++i >= positions.length) continue;
                result.append(", ");
            }
            result.append("]");
        } else {
            result.append(this.getNewValue());
        }
        result.append(", isTouch: ");
        result.append(this.isTouch());
        result.append(", wasSet: ");
        result.append(this.wasSet());
        result.append(")");
        return result.toString();
    }
}


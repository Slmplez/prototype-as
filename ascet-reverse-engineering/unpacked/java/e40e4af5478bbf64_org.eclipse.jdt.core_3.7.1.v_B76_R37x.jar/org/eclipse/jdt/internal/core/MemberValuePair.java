/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.jdt.core.IMemberValuePair;
import org.eclipse.jdt.internal.core.util.Util;

public class MemberValuePair
implements IMemberValuePair {
    String memberName;
    public Object value;
    public int valueKind = 14;

    public MemberValuePair(String memberName) {
        this.memberName = memberName;
    }

    public MemberValuePair(String memberName, Object value, int valueKind) {
        this(memberName);
        this.value = value;
        this.valueKind = valueKind;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MemberValuePair)) {
            return false;
        }
        MemberValuePair other = (MemberValuePair)obj;
        return this.valueKind == other.valueKind && this.memberName.equals(other.memberName) && (this.value == other.value || this.value != null && this.value.equals(other.value) || this.value instanceof Object[] && other.value instanceof Object[] && Util.equalArraysOrNull((Object[])this.value, (Object[])other.value));
    }

    public String getMemberName() {
        return this.memberName;
    }

    public Object getValue() {
        return this.value;
    }

    public int getValueKind() {
        return this.valueKind;
    }

    public int hashCode() {
        int result = 1;
        result = 31 * result + (this.memberName == null ? 0 : this.memberName.hashCode());
        result = 31 * result + (this.value == null ? 0 : this.value.hashCode());
        result = 31 * result + this.valueKind;
        return result;
    }
}


/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.core;

import java.util.EventObject;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public final class DebugEvent
extends EventObject {
    private static final long serialVersionUID = 1L;
    public static final int RESUME = 1;
    public static final int SUSPEND = 2;
    public static final int CREATE = 4;
    public static final int TERMINATE = 8;
    public static final int CHANGE = 16;
    public static final int MODEL_SPECIFIC = 32;
    public static final int STEP_INTO = 1;
    public static final int STEP_OVER = 2;
    public static final int STEP_RETURN = 4;
    public static final int STEP_END = 8;
    public static final int BREAKPOINT = 16;
    public static final int CLIENT_REQUEST = 32;
    public static final int EVALUATION = 64;
    public static final int EVALUATION_IMPLICIT = 128;
    public static final int STATE = 256;
    public static final int CONTENT = 512;
    public static final int UNSPECIFIED = 0;
    private int fKind = 0;
    private int fDetail = 0;
    private Object fData = null;

    public DebugEvent(Object eventSource, int kind) {
        this(eventSource, kind, 0);
    }

    public DebugEvent(Object eventSource, int kind, int detail) {
        super(eventSource);
        if ((kind & 0x3F) == 0) {
            throw new IllegalArgumentException(DebugCoreMessages.DebugEvent_illegal_kind);
        }
        if (kind != 32 && detail != 0 && (detail & 0x3FF) == 0) {
            throw new IllegalArgumentException(DebugCoreMessages.DebugEvent_illegal_detail);
        }
        this.fKind = kind;
        this.fDetail = detail;
    }

    public int getDetail() {
        return this.fDetail;
    }

    public int getKind() {
        return this.fKind;
    }

    public boolean isStepStart() {
        return (this.getDetail() & 7) > 0;
    }

    public boolean isEvaluation() {
        return (this.getDetail() & 0xC0) > 0;
    }

    public void setData(Object data) {
        this.fData = data;
    }

    public Object getData() {
        return this.fData;
    }

    public String toString() {
        StringBuffer buf = new StringBuffer("DebugEvent[");
        if (this.getSource() != null) {
            buf.append(this.getSource().toString());
        } else {
            buf.append("null");
        }
        buf.append(", ");
        switch (this.getKind()) {
            case 4: {
                buf.append("CREATE");
                break;
            }
            case 8: {
                buf.append("TERMINATE");
                break;
            }
            case 1: {
                buf.append("RESUME");
                break;
            }
            case 2: {
                buf.append("SUSPEND");
                break;
            }
            case 16: {
                buf.append("CHANGE");
                break;
            }
            case 0: {
                buf.append("UNSPECIFIED");
                break;
            }
            case 32: {
                buf.append("MODEL_SPECIFIC");
            }
        }
        buf.append(", ");
        switch (this.getDetail()) {
            case 16: {
                buf.append("BREAKPOINT");
                break;
            }
            case 32: {
                buf.append("CLIENT_REQUEST");
                break;
            }
            case 8: {
                buf.append("STEP_END");
                break;
            }
            case 1: {
                buf.append("STEP_INTO");
                break;
            }
            case 2: {
                buf.append("STEP_OVER");
                break;
            }
            case 4: {
                buf.append("STEP_RETURN");
                break;
            }
            case 64: {
                buf.append("EVALUATION");
                break;
            }
            case 128: {
                buf.append("EVALUATION_IMPLICIT");
                break;
            }
            case 256: {
                buf.append("STATE");
                break;
            }
            case 512: {
                buf.append("CONTENT");
                break;
            }
            case 0: {
                buf.append("UNSPECIFIED");
                break;
            }
            default: {
                buf.append(this.getDetail());
            }
        }
        buf.append("]");
        return buf.toString();
    }
}


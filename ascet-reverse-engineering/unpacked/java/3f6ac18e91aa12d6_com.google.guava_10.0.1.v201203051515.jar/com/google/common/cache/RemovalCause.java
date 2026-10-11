/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.cache;

import com.google.common.annotations.Beta;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@Beta
public enum RemovalCause {
    EXPLICIT{

        boolean wasEvicted() {
            return false;
        }
    }
    ,
    REPLACED{

        boolean wasEvicted() {
            return false;
        }
    }
    ,
    COLLECTED{

        boolean wasEvicted() {
            return true;
        }
    }
    ,
    EXPIRED{

        boolean wasEvicted() {
            return true;
        }
    }
    ,
    SIZE{

        boolean wasEvicted() {
            return true;
        }
    };


    abstract boolean wasEvicted();
}


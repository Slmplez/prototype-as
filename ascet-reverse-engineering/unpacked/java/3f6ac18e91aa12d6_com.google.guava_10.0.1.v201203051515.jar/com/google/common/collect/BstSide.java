/*
 * Decompiled with CFR 0.152.
 */
package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
@GwtCompatible
enum BstSide {
    LEFT{

        public BstSide other() {
            return RIGHT;
        }
    }
    ,
    RIGHT{

        public BstSide other() {
            return LEFT;
        }
    };


    abstract BstSide other();
}


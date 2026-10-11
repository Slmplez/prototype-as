/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler;

import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;

public class DefaultErrorHandlingPolicies {
    public static IErrorHandlingPolicy exitAfterAllProblems() {
        return new IErrorHandlingPolicy(){

            public boolean stopOnFirstError() {
                return false;
            }

            public boolean proceedOnErrors() {
                return false;
            }
        };
    }

    public static IErrorHandlingPolicy exitOnFirstError() {
        return new IErrorHandlingPolicy(){

            public boolean stopOnFirstError() {
                return true;
            }

            public boolean proceedOnErrors() {
                return false;
            }
        };
    }

    public static IErrorHandlingPolicy proceedOnFirstError() {
        return new IErrorHandlingPolicy(){

            public boolean stopOnFirstError() {
                return true;
            }

            public boolean proceedOnErrors() {
                return true;
            }
        };
    }

    public static IErrorHandlingPolicy proceedWithAllProblems() {
        return new IErrorHandlingPolicy(){

            public boolean stopOnFirstError() {
                return false;
            }

            public boolean proceedOnErrors() {
                return true;
            }
        };
    }
}


/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.dom;

public class Message {
    private String message;
    private int startPosition;
    private int length;

    public Message(String message, int startPosition) {
        if (message == null) {
            throw new IllegalArgumentException();
        }
        if (startPosition < -1) {
            throw new IllegalArgumentException();
        }
        this.message = message;
        this.startPosition = startPosition;
        this.length = 0;
    }

    public Message(String message, int startPosition, int length) {
        if (message == null) {
            throw new IllegalArgumentException();
        }
        if (startPosition < -1) {
            throw new IllegalArgumentException();
        }
        this.message = message;
        this.startPosition = startPosition;
        this.length = length <= 0 ? 0 : length;
    }

    public String getMessage() {
        return this.message;
    }

    public int getSourcePosition() {
        return this.getStartPosition();
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public int getLength() {
        return this.length;
    }
}


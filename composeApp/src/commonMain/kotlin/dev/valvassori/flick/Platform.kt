package dev.valvassori.flick

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform
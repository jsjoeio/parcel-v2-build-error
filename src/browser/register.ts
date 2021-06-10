
export async function registerServiceWorker(): Promise<void> {
  try {
    await navigator.serviceWorker.register("", {
      scope: "/"
    })
  } catch (error) {
    console.error(`[Service Worker] registration`, error)
  }
}

if (typeof navigator !== "undefined" && "serviceWorker" in navigator) {
  registerServiceWorker()
} else {
  console.error(`[Service Worker] navigator is undefined`)
}

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="top-navbar">
    <div class="d-flex align-items-center gap-3">
        <h2 class="m-0 fs-5 fw-black d-none d-md-block">Panel ${sessionScope.userRole}</h2>
    </div>
    <div class="d-flex align-items-center gap-2">
        <div class="d-flex align-items-center gap-1 me-2">
            <button class="btn btn-link text-decoration-none p-2 rounded-circle"
                style="color: var(--on-surface-variant);">
                <span class="material-symbols-outlined" style="font-size: 22px;">notifications</span>
            </button>
            <button class="btn btn-link text-decoration-none p-2 rounded-circle"
                style="color: var(--on-surface-variant);">
                <span class="material-symbols-outlined" style="font-size: 22px;">help</span>
            </button>
        </div>
        <div class="vr mx-2 opacity-25" style="height: 30px;"></div>
        <div class="d-flex align-items-center gap-2 ps-2">
            <div class="text-end d-none d-sm-block">
                <p class="m-0 fw-bold lh-1" style="font-size: 13px;">${sessionScope.userName}</p>
                <small class="text-secondary" style="font-size: 11px;">${sessionScope.userRole}</small>
            </div>
            <img src="https://lh3.googleusercontent.com/aida-public/AB6AXuCXGJufHjzQiVxUW2Gv8rJ-1dGdOvyNvs-jY3Hc9krbWTrvGcAEhxvbu898oK7l-FGpbaVW0Tmt4XBrh3VUTdoCjtI1OZQW_GG7Mps1Kl4EHAOhgW8T0wvkKEcMw9XGxZCI57CrcK7_qoreh1R1eVNA6iQdjHhu7dy86jxeNFcM6pxUdaQH6dAKbtCQozCuqWLOGP5UTV_V2XRbvbGqkx7KOFSp90GTtuEdUIQOTM2G9deRlIo-dpuoKm823CvZBhtnTEIiBZ2SisE"
                alt="Avatar" class="rounded-circle border border-2 border-secondary"
                style="width: 36px; height: 36px; object-fit: cover; cursor: pointer;">
        </div>
    </div>
</header>

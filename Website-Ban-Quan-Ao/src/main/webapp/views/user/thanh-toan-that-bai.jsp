<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="container" style="margin-top: 200px; margin-bottom: 200px">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <h2 class="text-center">GIAO DỊCH THẤT BẠI HOÁ ĐƠN: ${maHoaDon}</h2>
            <form>
                <div class="text-center mb-3">
                    <svg height="64px" width="64px" version="1.1" id="Layer_1"
                         xmlns="http://www.w3.org/2000/svg"
                         viewBox="0 0 512 512" xml:space="preserve" fill="#000000">
                                <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                        <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                        <g id="SVGRepo_iconCarrier">
                            <path style="fill:#FF6465;"
                                  d="M256.002,503.671c136.785,0,247.671-110.886,247.671-247.672S392.786,8.329,256.002,8.329 S8.33,119.215,8.33,256.001S119.216,503.671,256.002,503.671z">
                            </path>
                            <path style="opacity:0.1;enable-background:new ;"
                                  d="M74.962,256.001c0-125.485,93.327-229.158,214.355-245.434 c-10.899-1.466-22.016-2.238-33.316-2.238C119.216,8.329,8.33,119.215,8.33,256.001s110.886,247.672,247.671,247.672 c11.3,0,22.417-0.772,33.316-2.238C168.289,485.159,74.962,381.486,74.962,256.001z">
                            </path>
                            <path style="fill:#FFFFFF;"
                                  d="M311.525,256.001l65.206-65.206c4.74-4.74,4.74-12.425,0-17.163l-38.36-38.36 c-4.74-4.74-12.425-4.74-17.164,0l-65.206,65.206l-65.206-65.206c-4.74-4.74-12.425-4.74-17.163,0l-38.36,38.36 c-4.74,4.74-4.74,12.425,0,17.163l65.206,65.206l-65.206,65.206c-4.74,4.74-4.74,12.425,0,17.164l38.36,38.36 c4.74,4.74,12.425,4.74,17.163,0l65.206-65.206l65.206,65.206c4.74,4.74,12.425,4.74,17.164,0l38.36-38.36 c4.74-4.74,4.74-12.425,0-17.164L311.525,256.001z">
                            </path>
                            <path
                                    d="M388.614,182.213c0-5.467-2.129-10.607-5.995-14.471l-38.36-38.36c-3.865-3.865-9.004-5.994-14.471-5.994 s-10.605,2.129-14.471,5.994l-59.316,59.316l-59.316-59.316c-3.865-3.865-9.004-5.994-14.471-5.994 c-5.467,0-10.606,2.129-14.471,5.994l-38.36,38.36c-7.979,7.979-7.979,20.962,0,28.943l59.316,59.316l-59.316,59.316 c-7.979,7.979-7.979,20.962,0,28.943l38.36,38.36c3.865,3.865,9.004,5.993,14.471,5.993c5.467,0,10.606-2.129,14.471-5.993 l59.316-59.316l59.316,59.316c3.865,3.865,9.004,5.993,14.471,5.993s10.605-2.129,14.471-5.993l38.36-38.36 c3.866-3.865,5.995-9.004,5.995-14.471c0-5.467-2.129-10.607-5.995-14.471l-59.315-59.316l59.315-59.315 C386.485,192.818,388.614,187.68,388.614,182.213z M370.84,184.905l-65.204,65.206c-3.253,3.253-3.253,8.527,0,11.778l65.204,65.207 c0.971,0.971,1.115,2.103,1.115,2.692c0,0.589-0.144,1.721-1.115,2.692l-38.36,38.36c-0.971,0.971-2.103,1.115-2.692,1.115 c-0.589,0-1.722-0.144-2.692-1.115l-65.206-65.206c-1.626-1.626-3.758-2.44-5.889-2.44c-2.131,0-4.263,0.813-5.889,2.44 l-65.206,65.206c-0.971,0.971-2.103,1.115-2.692,1.115c-0.59,0-1.722-0.144-2.693-1.115l-38.36-38.36 c-1.484-1.485-1.484-3.9,0-5.385l65.206-65.206c3.253-3.253,3.253-8.527,0-11.778l-65.206-65.206c-1.484-1.485-1.484-3.9,0-5.385 l38.359-38.36c0.971-0.971,2.104-1.115,2.693-1.115s1.722,0.144,2.692,1.115l65.206,65.206c3.253,3.253,8.527,3.253,11.778,0 l65.206-65.206c0.971-0.971,2.103-1.115,2.692-1.115c0.589,0,1.722,0.144,2.692,1.115l38.36,38.36 c0.971,0.971,1.115,2.103,1.115,2.692S371.811,183.934,370.84,184.905z">
                            </path>
                            <path
                                    d="M423.9,73.756c-3.229,3.276-3.191,8.55,0.086,11.778c46.016,45.349,71.358,105.89,71.358,170.466 c0,63.931-24.896,124.035-70.102,169.241s-105.31,70.102-169.241,70.102c-35.385,0-69.471-7.555-101.311-22.455 c-4.166-1.95-9.124-0.153-11.074,4.013c-1.95,4.166-0.153,9.124,4.013,11.074C181.695,503.917,218.156,512,255.999,512 c68.381,0,132.668-26.629,181.019-74.982c48.352-48.352,74.98-112.64,74.98-181.019c0-69.072-27.106-133.825-76.323-182.331 C432.401,70.44,427.128,70.478,423.9,73.756z">
                            </path>
                            <path
                                    d="M116.34,470.563c1.405,0.916,2.982,1.354,4.542,1.354c2.72,0,5.387-1.332,6.984-3.78c2.513-3.852,1.427-9.013-2.426-11.526 c-68.115-44.424-108.78-119.419-108.78-200.611c0-63.931,24.896-124.035,70.102-169.24c45.206-45.206,105.31-70.102,169.241-70.102 c52.234,0,101.864,16.528,143.525,47.796c3.679,2.761,8.9,2.017,11.66-1.662c2.761-3.679,2.017-8.9-1.662-11.661 C364.958,17.681,311.87,0,256.002,0c-68.38,0-132.668,26.629-181.019,74.98C26.63,123.333,0.001,187.62,0.001,255.999 C0.001,342.841,43.493,423.051,116.34,470.563z">
                            </path>
                        </g>
                            </svg>
                </div>
                <div class="mb-3 text-center">
                    <a href="/" class="btn btn-dark">Về đơn hàng</a>
                </div>
            </form>
        </div>
    </div>
</div>
